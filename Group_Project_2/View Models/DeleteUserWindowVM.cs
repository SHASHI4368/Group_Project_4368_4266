using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Group_Project_2.View_Models
{
    public partial class DeleteUserWindowVM : ObservableObject
    {
        public User User { get; set; }

        public DeleteUserWindowVM(User u)
        {
            User = u;
        }

        public DeleteUserWindowVM()
        {

        }

        private RelayCommand deleteUserCommand1;
        public ICommand deleteUserCommand => deleteUserCommand1 ??= new RelayCommand(deleteUser1);

        private void deleteUser1()
        {
            using (var db = new DataBaseContext())
            {
                if (db.Users.FirstOrDefault(u => u.UserName == User.UserName) != null)
                {
                    db.Users.Remove(db.Users.FirstOrDefault(u => u.UserName == User.UserName));
                    db.SaveChanges();
                    UserGridViewPageVM.NormalUsers.Remove(User);
                    var w = new MWindow("User Deleted !!!");
                    w.ShowDialog();
                }
                else
                {
                    var w = new MWindow("Password is Incorrect");
                    w.ShowDialog();
                }

            }
        }
    }
}
