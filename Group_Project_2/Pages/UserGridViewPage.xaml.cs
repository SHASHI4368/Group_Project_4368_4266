using Group_Project_2.entities;
using Group_Project_2.View_Models;
using System;
using System.Collections.Generic;
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
    /// Interaction logic for UserGridViewPage.xaml
    /// </summary>
    public partial class UserGridViewPage : Page
    {
        public UserGridViewPage(User u)
        {
            InitializeComponent();
            DataContext = new UserGridViewPageVM(u);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var temp = (User)((Button)sender).CommandParameter;
            var conformWindow = new ConformWindow(UserGridViewPageVM.User, temp);
            conformWindow.Show();
        }

        private void Page_Activated(object sender, EventArgs e)
        {
            UserGridViewPageVM.RefreshNormalUsers();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            var temp = (User)((Button)sender).CommandParameter;
            var conformDeleteWindow = new ConformDeleteWindow(UserGridViewPageVM.User, temp);
            conformDeleteWindow.Show();
        }
    }
}
