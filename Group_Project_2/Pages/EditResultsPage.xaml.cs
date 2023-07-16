using Group_Project_2.entities;
using Group_Project_2.View_Models;
using Microsoft.EntityFrameworkCore;
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
    /// Interaction logic for EditResultsPage.xaml
    /// </summary>
    public partial class EditResultsPage : Page
    {
        public EditResultsPage(Student student)
        {
            InitializeComponent();
            DataContext = new EditResultsPageVM(student);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var module = (Module)((Button)sender).CommandParameter;
            if (module != null && EditResultsPageVM.Results.FirstOrDefault(r => r.Module.ModuleCode == module.ModuleCode) == null)
            {
                Result temp = new Result();
                temp.Module = module;
                EditResultsPageVM.Results.Add(temp);
            }
            cResults.ItemsSource = EditResultsPageVM.Results;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (((Button)sender).CommandParameter != null)
            {
                var result = (Result)((Button)sender).CommandParameter;
                if (result != null && EditResultsPageVM.Results.FirstOrDefault(r => r.Module.ModuleCode == result.Module.ModuleCode) != null)
                {
                    EditResultsPageVM.Results.Remove(EditResultsPageVM.Results.FirstOrDefault(r => r.Module.ModuleCode == result.Module.ModuleCode));
                }
                cResults.ItemsSource = EditResultsPageVM.Results;
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            using (var db = new DataBaseContext())
            {
                if (EditResultsPageVM.Results != null)
                {
                    var student = db.Students
                        .Include(s => s.Modules)
                        .Include(s => s.Results)
                        .ThenInclude(r => r.Module)
                        .FirstOrDefault(s => s.Id == EditResultsPageVM.Student.Id);

                    student.Results.Clear();

                    foreach (var r in EditResultsPageVM.Results)
                    {
                        // Check if the Result entity is already being tracked by the context
                        var existingResult = db.Results.Find(r.ID);
                        Result updatedResult;

                        if (existingResult != null)
                        {
                            // If the Result entity is already being tracked, update its values
                            db.Entry(existingResult).CurrentValues.SetValues(r);
                            updatedResult = existingResult;
                        }
                        else
                        {
                            updatedResult = r;
                            // Check if the Module entity is already being tracked by the context
                            var existingModule = db.Modules.Find(r.Module.ID);
                            if (existingModule != null)
                            {
                                // If the Module entity is already being tracked, use the tracked entity instead of the new one
                                updatedResult.Module = existingModule;
                            }
                        }

                        student.Results.Add(updatedResult);
                    }

                    db.SaveChanges();
                    var m = new MWindow("Results Updated");
                    m.ShowDialog();
                }
            }

        }

        private void TextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            TextBox textBox = (TextBox)sender;
            textBox.SelectAll();
        }
    }
}
