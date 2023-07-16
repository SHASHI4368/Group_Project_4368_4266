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
    /// Interaction logic for AddStudentPage.xaml
    /// </summary>
    public partial class AddStudentPage : Page
    {
        public AddStudentPage()
        {
            InitializeComponent();
            DataContext = new AddStudentPageVM();
        }

        private void cb_Checked(object sender, RoutedEventArgs e)
        {
            CheckBox cb = sender as CheckBox;
            Module module = cb?.CommandParameter as Module;
            if (module != null && !AddStudentPageVM.Modules.Contains(module))
            {
                AddStudentPageVM.Modules.Add(module);
            }

        }

        private void cb_Unchecked(object sender, RoutedEventArgs e)
        {
            CheckBox cb = sender as CheckBox;
            Module module = cb?.CommandParameter as Module;
            if (module != null && AddStudentPageVM.Modules.Contains(module))
            {
                AddStudentPageVM.Modules.Remove(module);
            }
        }

        private void dob(object sender, RoutedEventArgs e)
        {
            datePicker.IsDropDownOpen = true;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (fName.Text == "")
                fName.Focus();
            else if(lName.Text=="")
                lName.Focus();
            else if(addr.Text=="")
                addr.Focus();
            else if(tel.Text=="")
                tel.Focus();
        }
    }
}
