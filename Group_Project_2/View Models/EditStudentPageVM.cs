using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Group_Project_2.View_Models
{
    public partial class EditStudentPageVM : ObservableObject
    {
        public static Student Student { get; set; }
        public static bool IsMale { get; set; }
        public bool IsFemale { get; set; }
        public static DateTime DatePickerDate { get; set; }
        public DateOnly Dob
        {
            get { return DateOnly.FromDateTime(DatePickerDate); }
        }
        public ObservableCollection<Module> Modules { get; set; }
        public static ObservableCollection<Module> SModules { get; set; }

        public EditStudentPageVM(Student s)
        {
            DatePickerDate = new DateTime(s.Birthday.Year, s.Birthday.Month, s.Birthday.Day);
            Modules = new ObservableCollection<Module>();
            if (s.Gender == Gender.Male)
            {
                IsMale = true;
            }
            else
            {
                IsFemale = true;
            }
            using (var db = new DataBaseContext())
            {
                Student = db.Students.Include(m => m.Modules).FirstOrDefault(m => m.Id == s.Id);
                SModules = new ObservableCollection<Module>(db.Students.Include(m => m.Modules).FirstOrDefault(m => m.Id == s.Id).Modules);
                foreach (var module in db.Modules)
                {
                    Modules.Add(module);
                }
            }

        }
        public EditStudentPageVM()
        {

        }

        private RelayCommand goBackCommand1;
        public ICommand goBackCommand => goBackCommand1 ??= new RelayCommand(goBack1);

        public void goBack1()
        {
            if (MainWindowVM.Frame.NavigationService.CanGoBack)
                MainWindowVM.Frame.NavigationService.GoBack();
        }

        [RelayCommand]
        public void ChangeStudent()
        {
            using (var db = new DataBaseContext())
            {
                if (Student.FirstName != "" && Student.LastName != "" && Student.Address != "" && Student.Telephone != "" && Student.Birthday != null)
                {
                    if (IsMale == true)
                    {
                        Student.Gender = Gender.Male;
                    }
                    else
                    {
                        Student.Gender = Gender.Female;
                    }
                    db.Students.FirstOrDefault(s => s.Id == Student.Id).Modules.Clear();
                    db.SaveChanges();
                    db.Students.Remove(db.Students.Include(s => s.Modules).FirstOrDefault(s => s.Id == Student.Id));
                    Student.Modules.Clear();
                    Student.Birthday = new DateOnly(DatePickerDate.Year, DatePickerDate.Month, DatePickerDate.Day);
                    db.Students.Add(Student);
                    db.SaveChanges();
                    foreach (var module in      SModules)
                    {
                        if (db.Modules.Include(s => s.Students).FirstOrDefault(s => s.ID == module.ID).Students.FirstOrDefault(s => s.Id == Student.Id) == null)
                            db.Modules.FirstOrDefault(m => m.ModuleCode == module.ModuleCode).Students.Add(Student);
                    }
                    db.SaveChanges();
                    var m = new MWindow("Changed");
                    m.Show();
                }
                else
                {
                    if (Student.FirstName == "")
                    {
                        var m = new MWindow("Please Enter First Name");
                        m.Show();
                    }
                    else if (Student.LastName == "")
                    {
                        var m = new MWindow("Please Enter Last Name");
                        m.Show();
                    }
                    else if (Student.Address == "")
                    {
                        var m = new MWindow("Please Enter Address");
                        m.Show();
                    }
                    else if (Student.Telephone == "")
                    {
                        var m = new MWindow("Please Enter Telephone Number");
                        m.Show();
                    }
                    else if (IsFemale == false && IsMale == false)
                    {
                        var m = new MWindow("Please Select Gender");
                        m.Show();
                    }

                }
            }
        }
    }
}
