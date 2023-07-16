using Group_Project_2.entities;
using Group_Project_2.View_Models;
using Microsoft.EntityFrameworkCore;
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
    /// Interaction logic for ResultsPage.xaml
    /// </summary>
    public partial class ResultsPage : Page
    {
        public ResultsPage()
        {
            InitializeComponent();
            DataContext = new ResultsPageVM();
        }

        private void regNo_TextChanged(object sender, TextChangedEventArgs e)
        {
            using (var db = new DataBaseContext())
            {
                if (!string.IsNullOrEmpty(regNo.Text))
                {
                    ResultsPageVM.Students.Clear();
                    foreach (var std in db.Students.Include(s => s.Modules).Include(s => s.Results).Where(s => s.RegNumber.ToUpper().Contains(regNo.Text.ToUpper())))
                    {
                        ResultsPageVM.Students.Add(std);

                    }
                }
                else
                {
                    ResultsPageVM.Students = new ObservableCollection<Student>(db.Students.Include(s => s.Modules).Include(s => s.Results));
                }
                allResults.ItemsSource = ResultsPageVM.Students;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var std = (Student)((Button)sender).CommandParameter;
            using (var db = new DataBaseContext())
            {
                ResultsPageVM.Student = db.Students.Include(s => s.Results).ThenInclude(m => m.Module).FirstOrDefault(s => s.Id == std.Id);

            }
            results.ItemsSource = ResultsPageVM.Student.Results;
            mTB1.Text = std.FullName;
            mTB2.Text = std.RegNumber;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            using (var db = new DataBaseContext())
            {
                if(ResultsPageVM.Student!=null)
                    MainWindowVM.Frame.Content = new EditResultsPage(ResultsPageVM.Student);
            }
        }

        private void Page_Activated(object sender, RoutedEventArgs e)
        {
            ResultsPageVM.RefreshResults(results);
            //if (ResultsPageVM.Student != null)
            //    results.ItemsSource = ResultsPageVM.Student.Results;
        }
    }
}
