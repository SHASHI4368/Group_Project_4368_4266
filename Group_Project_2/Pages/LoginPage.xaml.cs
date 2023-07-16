using Group_Project_2.entities;
using Group_Project_2.View_Models;
using System;
using System.Collections.Generic;
using System.DirectoryServices.ActiveDirectory;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Group_Project_2.Pages
{
    /// <summary>
    /// Interaction logic for LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            using var db = new DataBaseContext();
            int adminCount = db.Users.Where(u => u.UserType == UserType.Admin).Count();
            if (adminCount == 0)
            {
                var w = new MWindow($"You are the first User. Please Enter 'user{db.Users.Count() + 1}' as username and 'password' as password");
                w.ShowDialog();
            }
            InitializeComponent();
            DataContext = new LoginPageVM();
            
        }
        private void pw_PasswordChanged(object sender, RoutedEventArgs e)
        {
            LoginPageVM.Pw = pw.Password.ToString();
        }
    }
}
