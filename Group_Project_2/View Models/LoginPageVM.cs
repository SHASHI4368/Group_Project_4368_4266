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
    public partial class LoginPageVM : ObservableObject
    {
        public ObservableCollection<User> Users { get; set; }
        public static int id;
        public string Un { get; set; }
        public static string Pw { get; set; }

        public LoginPageVM()
        {
            using (var db = new DataBaseContext())
            {
                if (db.Users.Where(u => u.UserType == UserType.Admin).Count() == 0)
                {
                    id = db.Users.Count() + 1;
                    User first = new User(id, "-", "-", $"user{id}", "password", UserType.Admin, "-", "-", "-", Gender.Male);
                    db.Users.Add(first);
                    db.SaveChanges();
                }
                Users = new ObservableCollection<User>(db.Users.ToList());
            }
        }
        [RelayCommand]
        public void validate()
        {
            using (var db = new DataBaseContext())
            {
                if (db.Users.Any(s => s.UserName == Un && s.Password == Pw))
                {
                    User selectedUser = db.Users.FirstOrDefault(s => s.UserName == Un && s.Password == Pw);
                    if (selectedUser.UserType == UserType.Admin)
                    {
                        var page = new AdminPage(selectedUser);
                        MainWindowVM.Frame.Content = page;
                    }
                    else
                    {
                        MainWindowVM.Frame.Content = new NormalUserPage(selectedUser);
                    }

                }
                else
                {
                    var w = new MWindow("Username or Password is incorrect");
                    w.ShowDialog();
                }
            }
        }
    }
}
