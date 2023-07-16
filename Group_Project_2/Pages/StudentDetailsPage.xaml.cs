using Group_Project_2.entities;
using Group_Project_2.View_Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
    /// Interaction logic for StudentDetailsPage.xaml
    /// </summary>
    public partial class StudentDetailsPage : Page
    {
        public StudentDetailsPage()
        {
            InitializeComponent();
            DataContext = new StudentDetailsPageVM();
        }

        private void regNo_TextChanged(object sender, TextChangedEventArgs e)
        {
            using (var db = new DataBaseContext())
            {
                if (!string.IsNullOrEmpty(regNo.Text))
                {
                    StudentDetailsPageVM.Students.Clear();
                    foreach (var std in db.Students.Where(s => s.RegNumber.ToUpper().Contains(regNo.Text.ToUpper())))
                    {
                        StudentDetailsPageVM.Students.Add(std);
                    }
                }
                else
                {
                    StudentDetailsPageVM.Students = new ObservableCollection<Student>(db.Students);
                }
                myDataGrid.ItemsSource = StudentDetailsPageVM.Students;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var temp = (Student)((Button)sender).CommandParameter;
            MainWindowVM.Frame.Content = new EditStudentPage(temp); 
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            var s = (Student)((Button)sender).CommandParameter;
            var window = new DeleteStudentWindow(s);
            window.Show();
        }

        private void Page_Activated(object sender, RoutedEventArgs e)
        {
            StudentDetailsPageVM.RefreshStudents();
        }
    }
}
