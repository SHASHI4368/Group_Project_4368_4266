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
    public partial class NormalUserPageVM : ObservableObject
    {
        public User User { get; set; }

        public NormalUserPageVM(User us)
        {
            using var db = new DataBaseContext();
            User = db.Users.FirstOrDefault(u=> u.Id == us.Id);
            if (User.UserType == UserType.Admin)
                throw new ArgumentException();
        }
        public NormalUserPageVM()
        {

        }

        [RelayCommand]
        public void addStudent()
        {
            MainWindowVM.Frame.Content = new AddStudentPage();
        }

        private RelayCommand changeUserNowCommand1;
        public ICommand changeUserNowCommand => changeUserNowCommand1 ??= new RelayCommand(changeUserNow1);

        private void changeUserNow1()
        {
            if (User != null)
            {
                MainWindowVM.Frame.Content = new EditUserPage(User, 3);
            }
        }

        private RelayCommand editStudentCommand1;
        public ICommand editStudentCommand => editStudentCommand1 ??= new RelayCommand(editStudent1);

        private void editStudent1()
        {
            MainWindowVM.Frame.Content = new StudentDetailsPage();
        }

        private RelayCommand addResultsCommand1;
        public ICommand addResultsCommand => addResultsCommand1 ??= new RelayCommand(addResults1);

        private void addResults1()
        {
            MainWindowVM.Frame.Content = new ResultsPage();
        }

        [RelayCommand]
        public void logOut()
        {
            MainWindowVM.Frame.Content = new LoginPage();
        }
    }
}
