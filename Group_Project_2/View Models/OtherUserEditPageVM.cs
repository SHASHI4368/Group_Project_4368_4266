using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using Group_Project_2.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Group_Project_2.View_Models
{
    public partial class OtherUserEditPageVM : ObservableObject
    {
        public User User { get; set; }
        public bool IsMale { get; set; }
        public bool IsFemale { get; set; }
        public bool IsNormaluser { get; set; }
        public bool IsAdminUser { get; set; }
        public OtherUserEditPageVM(User us)
        {
            using var db = new DataBaseContext();
            User = db.Users.FirstOrDefault(u => u.Id == us.Id);
            if (us.Gender == Gender.Male)
            {
                IsMale = true;
            }
            else
            {
                IsFemale = true;
            }
            if (us.UserType == UserType.Admin)
            {
                IsAdminUser = true;
            }
            else
            {
                IsNormaluser = true;
            }
        }
        public OtherUserEditPageVM()
        {

        }

        [RelayCommand]
        public void changeUser()
        {
            using (var db = new DataBaseContext())
            {
                if (User.FirstName != "" && User.LastName != "" && User.Password != "" && User.Address != "" && User.Telephone != "" && User.Email != "")
                {
                    if (IsMale == true)
                    {
                        User.Gender = Gender.Male;
                    }
                    else
                    {
                        User.Gender = Gender.Female;
                    }
                    if (IsAdminUser == true)
                    {
                        User.UserType = UserType.Admin;
                    }
                    else
                    {
                        User.UserType = UserType.Normal;
                    }
                    db.Users.Remove(db.Users.FirstOrDefault(u => u.Id == User.Id));
                    db.Users.Add(User);
                    db.SaveChanges();
                    var w = new MWindow("User Updated");
                    w.ShowDialog();
                }
                else
                {
                    if (User.FirstName == "")
                    {
                        var w = new MWindow("Please Enter First Name");
                        w.ShowDialog();
                    }
                    else if (User.LastName == "")
                    {
                        var w = new MWindow("Please Enter last Name");
                        w.ShowDialog();
                    }
                    else if (User.Address == "")
                    {
                        var w = new MWindow("Please Enter Address");
                        w.ShowDialog();
                    }
                    else if (User.Email == "")
                    {
                        var w = new MWindow("Please Enter Email");
                        w.ShowDialog();
                    }
                    else if (User.Telephone == "")
                    {
                        var w = new MWindow("Please Enter Telephone Number");
                        w.ShowDialog();
                    }
                    else if (!(IsMale || IsFemale))
                    {
                        var w = new MWindow("Please Select Gender");
                        w.ShowDialog();
                    }
                    else if (!(IsAdminUser || IsNormaluser))
                    {
                        var w = new MWindow("Please Select UserType");
                        w.ShowDialog();
                    }
                    else if (User.Password == "")
                    {
                        var w = new MWindow("Please Enter Password");
                        w.ShowDialog();
                    }

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
