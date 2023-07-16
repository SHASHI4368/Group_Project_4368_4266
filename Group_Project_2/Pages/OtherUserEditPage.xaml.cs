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
    /// Interaction logic for OtherUserEditPage.xaml
    /// </summary>
    public partial class OtherUserEditPage : Page
    {
        public OtherUserEditPage(User user)
        {
            InitializeComponent();
            DataContext = new OtherUserEditPageVM(user);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (fName.Text == "")
                fName.Focus();
            else if (lName.Text == "")
                lName.Focus();
            else if (addr.Text == "")
                addr.Focus();
            else if (email.Text == "")
                email.Focus();
            else if (tel.Text == "")
                tel.Focus();
            else if (pw.Text == "")
                pw.Focus();
        }
    }
}
