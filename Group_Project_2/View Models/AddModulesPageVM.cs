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
    public partial class AddModulesPageVM : ObservableObject
    {
        public string MName { get; set; }
        public string MCode { get; set; }
        public int Credits { get; set; }

        public AddModulesPageVM()
        {

        }

        private RelayCommand addModuleCommand1;
        public ICommand addModuleCommand => addModuleCommand1 ??= new RelayCommand(addModule1);

        private void addModule1()
        {
            using (var db = new DataBaseContext())
            {
                int id = 1;
                if(db.Modules.Count()!=0)
                    id = db.Modules.OrderBy(x => x.ID).Last().ID + 1;
                if (MName != null && MCode != null && Credits != 0)
                {
                    addModule(id);
                }
                else
                {
                    if (MName == null)
                    {
                        var w = new MWindow("Please Enter Module Name");
                        w.ShowDialog();
                    }
                    else if (MCode == null)
                    {
                        var w = new MWindow("Please Enter Module Code");
                        w.ShowDialog();
                    }else if (Credits == 0)
                    {
                        var w = new MWindow("Please Enter Number of Credits");
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

        public void addModule(int id)
        {
            if (MName == null || MCode == null)
            {
                throw new ArgumentNullException();
            }else if (Credits == 0)
            {
                throw new ArgumentOutOfRangeException();
            }
            else
            {
                using var db = new DataBaseContext();
                Module newModule = new Module(id, MName, MCode, Credits);
                db.Modules.Add(newModule);
                db.SaveChanges();
                var w = new MWindow($"Module added with Module Code {MCode}");
                w.ShowDialog();
            }
            
        }
    }
}
