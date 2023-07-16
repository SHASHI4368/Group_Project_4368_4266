using Group_Project_2.entities;
using Group_Project_2.Pages;
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
using System.Windows.Shapes;

namespace Group_Project_2
{
    /// <summary>
    /// Interaction logic for ConformWindow.xaml
    /// </summary>
    public partial class ConformWindow : Window
    {
        public ConformWindow(User admin, User normal)
        {
            InitializeComponent();
            DataContext = new ConformWindowVM(admin, normal);
        }

        private void pw_PasswordChanged(object sender, RoutedEventArgs e)
        {
            ConformWindowVM.Pw = pw.Password.ToString();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (ConformWindowVM.Pw != null)
            {
                if (ConformWindowVM.Pw == ConformWindowVM.AdminUser.Password)
                {
                    MainWindowVM.Frame.Content = new OtherUserEditPage(ConformWindowVM.Normal);
                    this.Close();
                }
                else
                {
                    var w = new MWindow("Password is Incorrect");
                    w.ShowDialog();
                }
            }
        }

        private void Button_Click_Minimize(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void Button_Click_Maximize(object sender, RoutedEventArgs e)
        {
            if (this.WindowState == WindowState.Normal)
                this.WindowState = WindowState.Maximized;
            else if (this.WindowState == WindowState.Maximized)
                this.WindowState = WindowState.Normal;
        }

        private void Button_Click_Close(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }
    }
}
