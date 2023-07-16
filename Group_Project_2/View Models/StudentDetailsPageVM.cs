using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
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
    public partial class StudentDetailsPageVM : ObservableObject
    {
        public static ObservableCollection<Student> Students { get; set; }
        public static string Key { get; set; }
        public StudentDetailsPageVM()
        {
            using (var db = new DataBaseContext())
            {
                Students = new ObservableCollection<Student>(db.Students);
            }
        }

        public static void RefreshStudents()
        {
            using (var db = new DataBaseContext())
            {
                if(Students != null)
                {
                    Students.Clear();
                    foreach (var user in db.Students)
                    {
                        Students.Add(user);
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
    }
}
