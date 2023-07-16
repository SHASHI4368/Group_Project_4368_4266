using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using Group_Project_2.Pages;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Group_Project_2.View_Models
{
    public partial class AddOrRemoveModulesPageVM : ObservableObject
    {
        public static ObservableCollection<Module> Modules { get; set; }

        public AddOrRemoveModulesPageVM()
        {
            using (var db = new DataBaseContext())
            {
                Modules = new ObservableCollection<Module>(db.Modules.ToList());
            }
        }

        private RelayCommand openAddModulesCommand1;
        public ICommand openAddModulesCommand => openAddModulesCommand1 ??= new RelayCommand(openAddModuleWindow1);

        private void openAddModuleWindow1()
        {
            MainWindowVM.Frame.Content = new AddModulesPage();
        }

        public static void RefreshModules()
        {
            using (var db = new DataBaseContext())
            {
                Modules.Clear();
                foreach (var m in db.Modules)
                {
                    Modules.Add(m);
                }
            }
        }

        [RelayCommand]
        public void goBack()
        {
            if (MainWindowVM.Frame.NavigationService.CanGoBack)
                MainWindowVM.Frame.NavigationService.GoBack();
        }

    }
}
