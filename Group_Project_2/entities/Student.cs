using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Group_Project_2.entities
{
    public class Student
    {
        public int Id { get; set; }
        public string RegNumber { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FullName
        {
            get { return $"{FirstName} {LastName}"; }
        }
        public string Address { get; set; }
        public string Telephone { get; set; }
        public DateOnly Birthday { get; set; }
        public string DOBString
        {
            get { return Birthday.ToString("yyyy MMMM dd"); }
        }
        public Gender Gender { get; set; }
        public ICollection<Module> Modules { get; set; }
        public ICollection<Result> Results { get; set; }
        public double GPA
        {
            get
            {
                var val1 = Results.Sum(r => r.GPV * r.Module.Credits);
                var val2 = Results.Sum(r => r.Module.Credits);
                return val1 / val2;
            }
        }

        public Student(int id, string regNumber, string firstName, string lastName, string address, string telephone, DateOnly birthday, Gender gender)
        {
            Id = id;
            RegNumber = regNumber;
            FirstName = firstName;
            LastName = lastName;
            Address = address;
            Telephone = telephone;
            Birthday = birthday;
            Gender = gender;
            Modules = new List<Module>();
            Results = new List<Result>();
        }
    }
}
