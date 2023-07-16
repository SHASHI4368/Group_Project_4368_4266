using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Group_Project_2.View_Models
{
    public partial class AddStudentPageVM : ObservableObject
    {
        public static ObservableCollection<Module> M { get; set; }
        public string Fn { get; set; }
        public string Ln { get; set; }
        public string Addr { get; set; }
        public string Tel { get; set; }
        public Gender G { get; set; }
        public bool IsMale { get; set; }
        public bool IsFemale { get; set; }
        public DateTime DatePickerDate { get; set; }
        public DateOnly Dob
        {
            get { return DateOnly.FromDateTime(DatePickerDate); }
        }
        public string Reg { get; set; }
        public static List<Module> Modules { get; set; }

        public AddStudentPageVM()
        {
            DatePickerDate = new DateTime(2000, 01, 01);
            M = new ObservableCollection<Module>();
            Modules = new List<Module>();
            using (var db = new DataBaseContext())
            {
                foreach (var module in db.Modules)
                {
                    M.Add(module);
                }
            }
            IsMale = false;
            IsFemale = false;
        }

        private RelayCommand addStudentCommand1;
        public ICommand addStudentCommand => addStudentCommand1 ??= new RelayCommand(addStudent1);

        public void addStudent1()
        {
            using (var db = new DataBaseContext())
            {
                int id = 0;
                if (db.Students.Count() == 0)
                    id = 1;
                else
                    id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
                if (Fn != null && Ln != null && Addr != null && Tel != null && (IsFemale==true || IsMale == true))
                {
                    addStudent(id);
                }
                else
                {
                    if(Fn == null)
                    {
                        var m = new MWindow("Please Enter First Name");
                        m.Show();
                    }else if(Ln == null)
                    {
                        var m = new MWindow("Please Enter Last Name");
                        m.Show();
                    }else if(Addr == null)
                    {
                        var m = new MWindow("Please Enter Address");
                        m.Show();
                    }else if(Tel == null)
                    {
                        var m = new MWindow("Please Enter Telephone Number");
                        m.Show();
                    }else if(IsFemale==false && IsMale == false)
                    {
                        var m = new MWindow("Please Select Gender");
                        m.Show();
                    }
                    
                }

            }
        }

        private RelayCommand goBackCommand1;
        public ICommand goBackCommand => goBackCommand1 ??= new RelayCommand(goBack1);

        public void goBack1()
        {
            if (MainWindowVM.Frame.NavigationService.CanGoBack)
                MainWindowVM.Frame.NavigationService.GoBack();
        }

        public void addStudent(int id)
        {
            using var db = new DataBaseContext();
            if (Fn == null || Ln == null || Addr == null || Tel == null)
            {
                throw new ArgumentNullException();
            }else if(IsFemale == false && IsMale == false)
            {
                throw new ArgumentNullException();
            }
            else
            {
                if (IsMale == true)
                {
                    G = Gender.Male;
                }
                else
                {
                    G = Gender.Female;
                }
                Reg = $"STD{(1000 + id)}";
                Student std = new Student(id, Reg, Fn, Ln, Addr, Tel, Dob, G);
                db.Students.Add(std);
                db.SaveChanges();
                foreach (var module in Modules)
                {
                    db.Modules.FirstOrDefault(m => m.ModuleCode == module.ModuleCode).Students.Add(std);
                }
                db.SaveChanges();
                var m = new MWindow($"Student added with Registration Number {Reg}");
                m.ShowDialog();
            }
        }
    }
}
