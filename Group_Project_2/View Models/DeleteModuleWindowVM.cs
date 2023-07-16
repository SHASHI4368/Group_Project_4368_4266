using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using Group_Project_2.entities;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Group_Project_2.View_Models
{
    public partial class DeleteModuleWindowVM : ObservableObject
    {
        public Module Module { get; set; }

        public DeleteModuleWindowVM(Module m)
        {
            Module = m;
        }

        public DeleteModuleWindowVM()
        {

        }

        private RelayCommand deleteModuleCommand1;
        public ICommand deleteModuleCommand => deleteModuleCommand1 ??= new RelayCommand(deleteModule1);

        private void deleteModule1()
        {
            using (var db = new DataBaseContext())
            {
                if (db.Modules.FirstOrDefault(m => m.ID == Module.ID) != null)
                {
                    db.Modules.Remove(db.Modules.FirstOrDefault(m => m.ID == Module.ID));
                    db.SaveChanges();
                    AddOrRemoveModulesPageVM.Modules.Remove(Module);
                    var w = new MWindow("Module Removed !!!");
                    w.ShowDialog();
                }
                else
                {
                    var w = new MWindow("No");
                    w.ShowDialog();
                }

            }
        }
    }
}
