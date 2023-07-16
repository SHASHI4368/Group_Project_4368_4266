using Group_Project_2.entities;
using Group_Project_2.View_Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using Group_Project_2.Pages;
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
    /// Interaction logic for AddOrRemoveModulesPage.xaml
    /// </summary>
    public partial class AddOrRemoveModulesPage : Page
    {
        public AddOrRemoveModulesPage()
        {
            InitializeComponent();
            DataContext = new AddOrRemoveModulesPageVM();
        }

        private void Page_Activated(object sender, RoutedEventArgs e)
        {
            AddOrRemoveModulesPageVM.RefreshModules();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var temp = (Module)((Button)sender).CommandParameter;
            MainWindowVM.Frame.Content = new EditModulePage(temp);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            var temp = (Module)((Button)sender).CommandParameter;
            var window = new DeleteModuleWindow(temp);
            window.Show();
        }
    }
}
