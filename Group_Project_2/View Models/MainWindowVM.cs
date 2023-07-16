using CommunityToolkit.Mvvm.ComponentModel;
using Group_Project_2.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Group_Project_2.View_Models
{
    public partial class MainWindowVM:ObservableObject
    {
        public LoginPage LoginPage { get; set; }
        public static Frame Frame { get; set; }
        public MainWindowVM(Frame f)
        {
            LoginPage = new LoginPage();
            Frame = f;
            Frame.Content = LoginPage;
        }

        public MainWindowVM()
        {
            
        }
    }
}
