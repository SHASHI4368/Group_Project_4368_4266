using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Group_Project_2.View_Models
{
    public partial class EditModulePageVM : ObservableObject
    {
        public Module Module { get; set; }

        public EditModulePageVM(Module md)
        {
            using var db = new DataBaseContext();
            Module = db.Modules.FirstOrDefault(m => m.ID == md.ID);
        }
        public EditModulePageVM()
        {

        }

        private RelayCommand changeModuleCommand1;
        public ICommand changeModuleCommand => changeModuleCommand1 ??= new RelayCommand(changeModule1);

        private void changeModule1()
        {
            using (var db = new DataBaseContext())
            {
                if (Module.ModuleName != null && Module.ModuleCode != null && Module.Credits != 0)
                {
                    db.Modules.Remove(db.Modules.FirstOrDefault(m => m.ID == Module.ID));
                    db.Modules.Add(Module);
                    db.SaveChanges();
                    var w = new MWindow("Module Updated");
                    w.ShowDialog();
                }
                else
                {
                    if (Module.ModuleName == null)
                    {
                        var w = new MWindow("Please Enter Module Name");
                        w.ShowDialog();
                    }
                    else if (Module.ModuleCode == null)
                    {
                        var w = new MWindow("Please Enter Module Code");
                        w.ShowDialog();
                    }
                    else if (Module.Credits == 0)
                    {
                        var w = new MWindow("Please Enter a valid Number of Credits");
                        w.ShowDialog();
                    }
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
