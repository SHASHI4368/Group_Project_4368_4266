using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Group_Project_2.View_Models
{
    public partial class AddUserPageVM : ObservableObject
    {
        public string Fn { get; set; }
        public string Ln { get; set; }
        public string Addr { get; set; }
        public string Tel { get; set; }
        public string Email { get; set; }
        public Gender Gndr { get; set; }
        public string Pw { get; set; }
        public UserType Type { get; set; }
        public string Un { get; set; }
        public bool IsMale { get; set; }
        public bool IsFemale { get; set; }
        public bool IsNormaluser { get; set; }
        public bool IsAdminUser { get; set; }

        public AddUserPageVM()
        {
        }

        [RelayCommand]
        public void adduser()
        {
            using (var db = new DataBaseContext())
            {
                int id = db.Users.OrderBy(x => x.Id).Last().Id + 1;
                if (Fn != null && Ln != null && Pw != null && Addr != null && Tel != null && Email != null && (IsMale || IsFemale) && (IsAdminUser || IsNormaluser))
                {
                    addUserNow(id);
                }
                else
                {
                    if (Fn == null)
                    {
                        var w = new MWindow("Please Enter First Name");
                        w.ShowDialog();
                    }
                    else if(Ln == null){
                        var w = new MWindow("Please Enter last Name");
                        w.ShowDialog();
                    }
                    else if(Addr == null){
                        var w = new MWindow("Please Enter Address");
                        w.ShowDialog();
                    }
                    else if (Email == null)
                    {
                        var w = new MWindow("Please Enter Email");
                        w.ShowDialog();
                    }
                    else if (Tel == null)
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
                    else if (Pw == null)
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
            {
                MainWindowVM.Frame.NavigationService.GoBack();
            }
        }

        public void addUserNow(int id)
        {
            using var db = new DataBaseContext();
            if(Fn==null || Ln==null || Addr==null || Tel==null || Email==null || Pw == null)
            {
                throw new ArgumentNullException();
            }
            else if((IsAdminUser==false && IsNormaluser==false) || (IsFemale==false && IsMale==false))
            {
                throw new ArgumentNullException();
            }

            if (IsMale == true)
            {
                Gndr = Gender.Male;
            }
            else
            {
                Gndr = Gender.Female;
            }
            if (IsAdminUser == true)
            {
                Type = UserType.Admin;
            }
            else
            {
                Type = UserType.Normal;
            }
            Un = $"{Fn[0]}{Ln[0]}{(1000 + id)}".ToUpper();
            User newUser = new(id, Fn, Ln, Un, Pw, Type, Addr, Tel, Email, Gndr);
            db.Users.Add(newUser);
            db.SaveChanges();
            var w = new MWindow($"user added with Username {Un}");
            w.ShowDialog();
        }
    }
}
