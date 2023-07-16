using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using Group_Project_2.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Group_Project_2.View_Models
{
    public partial class AdminPageVM : ObservableObject
    {
        public static User User { get; set; }

        public AdminPageVM(User us)
        {
            using var db = new DataBaseContext();
            User = db.Users.FirstOrDefault(u => u.Id == us.Id);
            if (User.UserType == UserType.Normal)
                throw new ArgumentException();
        }
        public AdminPageVM()
        {

        }
        [RelayCommand]
        public void changeUserNow()
        {
            if (User != null)
            {
                MainWindowVM.Frame.Content = new EditUserPage(User, 1);
            }

        }

        [RelayCommand]
        public void addUser()
        {
            MainWindowVM.Frame.Content = new AddUserPage();
        }

        [RelayCommand]
        public void gotoEditUserWindow()
        {
            if (User != null)
            {
                MainWindowVM.Frame.Content = new UserGridViewPage(User);
            }
        }

        private RelayCommand gotoModulesWindowCommand1;
        public ICommand gotoModulesWindowCommand => gotoModulesWindowCommand1 ??= new RelayCommand(gotoModulesWindow1);

        private void gotoModulesWindow1()
        {
            MainWindowVM.Frame.Content = new AddOrRemoveModulesPage();
        }

        [RelayCommand]
        public void logOut()
        {
            MainWindowVM.Frame.Content = new LoginPage();
        }

    }
}
