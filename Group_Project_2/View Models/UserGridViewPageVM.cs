using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using Group_Project_2.Pages;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Group_Project_2.View_Models
{
    public partial class UserGridViewPageVM : ObservableObject
    {
        public static User User { get; set; }
        public static ObservableCollection<User> NormalUsers { get; set; }

        public UserGridViewPageVM(User u)
        {
            using (var db = new DataBaseContext())
            {
                NormalUsers = new ObservableCollection<User>(db.Users.Where(u => u.UserType == UserType.Normal).ToList());
            }
            User = u;

        }

        public UserGridViewPageVM()
        {
            using (var db = new DataBaseContext())
            {
                NormalUsers = new ObservableCollection<User>(db.Users.Where(u => u.UserType == UserType.Normal).ToList());
            }
        }

        public static void RefreshNormalUsers()
        {
            using (var db = new DataBaseContext())
            {
                NormalUsers.Clear();
                foreach (var user in db.Users.Where(u => u.UserType == UserType.Normal))
                {
                    NormalUsers.Add(user);
                }
            }
        }

        [RelayCommand]
        public void goBack()
        {
            if (MainWindowVM.Frame.NavigationService.CanGoBack)
                MainWindowVM.Frame.NavigationService.GoBack();
        }
    }
}
