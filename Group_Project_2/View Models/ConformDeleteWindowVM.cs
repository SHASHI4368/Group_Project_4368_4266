using CommunityToolkit.Mvvm.ComponentModel;
using Group_Project_2.entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Group_Project_2.View_Models
{
    public partial class ConformDeleteWindowVM : ObservableObject
    {
        public static User? AdminUser { get; set; }
        public static User? Normal { get; set; }
        public static string? Pw { get; set; }



        public ConformDeleteWindowVM(User admin, User normal)
        {
            AdminUser = admin;
            Normal = normal;
        }
        public ConformDeleteWindowVM()
        {

        }
    }
}
