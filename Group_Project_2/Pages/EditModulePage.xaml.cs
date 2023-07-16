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
    /// Interaction logic for EditModulePage.xaml
    /// </summary>
    public partial class EditModulePage : Page
    {
        public EditModulePage(Module module)
        {
            InitializeComponent();
            DataContext = new EditModulePageVM(module);
        }

        private void credits_GotMouseCapture(object sender, MouseEventArgs e)
        {
            credits.SelectAll();
        }

        private void credits_GotKeyboardFocus(object sender, KeyboardFocusChangedEventArgs e)
        {
            credits.SelectAll();
        }
    }
}
