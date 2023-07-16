using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Group_Project_2.entities
{
    public class Module
    {
        public int ID { get; set; }
        public string ModuleName { get; set; }
        public string ModuleCode { get; set; }
        public int Credits { get; set; }
        public ICollection<Student> Students { get; set; }

        public Module(int iD, string moduleName, string moduleCode, int credits)
        {
            ID = iD;
            ModuleName = moduleName;
            ModuleCode = moduleCode;
            Credits = credits;
            Students = new List<Student>();
        }
    }
}
