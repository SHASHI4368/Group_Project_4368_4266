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
using System.Windows.Controls;
using System.Windows.Input;

namespace Group_Project_2.View_Models
{
    public partial class ResultsPageVM : ObservableObject
    {
        public static ObservableCollection<Student> Students { get; set; }
        public static string Key { get; set; }
        public static Student Student { get; set; }

        public ResultsPageVM()
        {
            using (var db = new DataBaseContext())
            {
                Students = new ObservableCollection<Student>(db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module));
            }
        }

        public static void RefreshResults(DataGrid dg)
        {
            using (var db = new DataBaseContext())
            {
                Students.Clear();
                foreach (var user in db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module))
                {
                    Students.Add(user);
                }
                if (Student != null)
                {
                    Student.Results.Clear();
                    foreach (var r in db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == Student.Id).Results)
                    {
                        Student.Results.Add(r);
                    }
                    dg.ItemsSource = db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == Student.Id).Results;
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
    }
}
