using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Group_Project_2.View_Models
{
    public partial class EditResultsPageVM : ObservableObject
    {
        public static Student Student { get; set; }
        public static ObservableCollection<Result> Results { get; set; }
        public static ObservableCollection<Module> Modules { get; set; }

        public EditResultsPageVM(Student std)
        {
            using (var db = new DataBaseContext())
            {
                Student = db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == std.Id);
                Results = new ObservableCollection<Result>(db.Students.Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == std.Id).Results);
                Modules = new ObservableCollection<Module>(db.Students.Include(s => s.Modules).FirstOrDefault(s => s.Id == std.Id).Modules);
                if (Results.Where(r => !Modules.Contains(r.Module)).ToList().Count() != 0)
                    throw new InvalidOperationException();
            }
        }

        public EditResultsPageVM()
        {

        }

        private RelayCommand goBackCommand1;
        public ICommand goBackCommand => goBackCommand1 ??= new RelayCommand(goBack1);

        public void goBack1()
        {
            if (MainWindowVM.Frame.NavigationService.CanGoBack)
                MainWindowVM.Frame.NavigationService.GoBack();
        }
    }
}
