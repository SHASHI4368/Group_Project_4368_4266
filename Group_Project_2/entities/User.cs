using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Group_Project_2.entities
{
    public enum UserType { Admin, Normal };
    public enum Gender { Male, Female };
    public class User
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FullName
        {
            get { return $"{FirstName} {LastName}"; }
        }
        public string UserName { get; set; }
        public string Password { get; set; }
        public UserType UserType { get; set; }
        public string Address { get; set; }
        public string Telephone { get; set; }
        public string Email { get; set; }
        public Gender Gender { get; set; }

        public User(int id, string firstName, string lastName, string userName, string password, UserType userType, string address, string telephone, string email, Gender gender)
        {
            Id = id;
            FirstName = firstName;
            LastName = lastName;
            UserName = userName;
            Password = password;
            UserType = userType;
            Address = address;
            Telephone = telephone;
            Email = email;
            Gender = gender;
        }
    }
}
