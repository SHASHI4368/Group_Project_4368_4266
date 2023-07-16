using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group_Project_2.entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Group_Project_2.View_Models
{
    public partial class DeleteStudentWindowVM : ObservableObject
    {
        public static Student Student { get; set; }

        public DeleteStudentWindowVM(Student s)
        {
            Student = s;
        }
        public DeleteStudentWindowVM()
        {

        }
        [RelayCommand]
        public void deleteStudent()
        {
            using (var db = new DataBaseContext())
            {
                db.Students.Remove(db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == Student.Id));
                db.SaveChanges();
                StudentDetailsPageVM.Students.Remove(Student);
                var m = new MWindow("Student Deleted !!!");
                m.Show();
            }
        }
    }
}
