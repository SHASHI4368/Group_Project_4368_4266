using FluentAssertions;
using Group_Project_2.entities;
using Group_Project_2.View_Models;
using System.Collections.ObjectModel;
using System.Windows;
using System.Threading;
using Assert = Xunit.Assert;

namespace Group_Project_2.Tests
{
    public class UnitTest1
    {
        // Login Page
        [Fact]
        public void WhenStarting_ThereShouldBe_AtLeastOne_AdminUser()
        {
            var vm = new LoginPageVM();
            vm.Users.Where(u => u.UserType == UserType.Admin).Count().Should().NotBe(0);
        }


        // Admin page

        [Fact]
        public void UserType_Should_Be_AdminUser_Otherwise_Throw_Exception()
        {
            // Arrange
            using var db = new DataBaseContext();
            int id = db.Users.Count() + 1;
            var user = new User(
                                        id,
                                        firstName: "John",
                                        lastName: "Doe",
                                        userName: "user",
                                        password: "password",
                                        userType: UserType.Normal,
                                        address: "123 Main Street",
                                        telephone: "555-1234",
                                        email: "email",
                                        gender: Gender.Male
                                    );
            // Act
            db.Users.Add( user );
            db.SaveChanges();
            Action action = () => new AdminPageVM(user);

            // Assert
            action.Should().Throw<ArgumentException>();

        }

        [Fact]
        public void Correct_AdminUser_ShouldBe_Added()
        {
            // Arrange
            using var db = new DataBaseContext();
            int id = db.Users.Count() + 1;
            var user = new User(
                                        id,
                                        firstName: "John",
                                        lastName: "Doe",
                                        userName: "user",
                                        password: "password",
                                        userType: UserType.Admin,
                                        address: "123 Main Street",
                                        telephone: "555-1234",
                                        email: "email",
                                        gender: Gender.Male
                                    );
            // Act
            db.Users.Add(user);
            db.SaveChanges();
            var vm = new AdminPageVM(user);

            // Assert
            AdminPageVM.User.Id.Should().Be( id ); 

        }


        // Normal User page

        [Fact]
        public void UserType_Should_Be_NormalUser_Otherwise_Throw_Exception()
        {
            // Arrange
            using var db = new DataBaseContext();
            int id = db.Users.Count() + 1;
            var user = new User(
                                        id,
                                        firstName: "John",
                                        lastName: "Doe",
                                        userName: "user",
                                        password: "password",
                                        userType: UserType.Admin,
                                        address: "123 Main Street",
                                        telephone: "555-1234",
                                        email: "email",
                                        gender: Gender.Male
                                    );
            // Act
            db.Users.Add(user);
            db.SaveChanges();
            Action action = () => new NormalUserPageVM(user);

            // Assert
            action.Should().Throw<ArgumentException>();

        }

        [Fact]
        public void Correct_Normal_ShouldBe_Added()
        {
            // Arrange
            using var db = new DataBaseContext();
            int id = db.Users.Count() + 1;
            var user = new User(
                                        id,
                                        firstName: "John",
                                        lastName: "Doe",
                                        userName: "user",
                                        password: "password",
                                        userType: UserType.Normal,
                                        address: "123 Main Street",
                                        telephone: "555-1234",
                                        email: "email",
                                        gender: Gender.Male
                                    );
            // Act
            db.Users.Add(user);
            db.SaveChanges();
            var vm = new NormalUserPageVM(user);

            // Assert
            vm.User.Id.Should().Be(id);

        }

        //Add modules page

        [Fact]
        public void When_MName_Is_Null_Then_Exception_Is_Thrown()
        {
            // Arrange
            var vm = new AddModulesPageVM();
            vm.MCode = "123";
            vm.MName = null;
            vm.Credits = 5;

            // Act
            using var db = new DataBaseContext();
            int id = 1;
            if (db.Modules.Count() != 0)
                id = db.Modules.OrderBy(x => x.ID).Last().ID + 1;
            Action act = () => vm.addModule(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_MCode_Is_Null_Then_Exception_Is_Thrown()
        {
            // Arrange
            var vm = new AddModulesPageVM();
            vm.MCode = null;
            vm.MName = "abc";
            vm.Credits = 5;

            // Act
            using var db = new DataBaseContext();
            int id = 1;
            if (db.Modules.Count() != 0)
                id = db.Modules.OrderBy(x => x.ID).Last().ID + 1;
            Action act = () => vm.addModule(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_Credits_Is_Zero_Then_Exception_Is_Thrown()
        {
            // Arrange
            var vm = new AddModulesPageVM();
            vm.MCode = "abc";
            vm.MName = "abc";
            vm.Credits = 0;

            // Act
            using var db = new DataBaseContext();
            int id = 1;
            if (db.Modules.Count() != 0)
                id = db.Modules.OrderBy(x => x.ID).Last().ID + 1;
            Action act = () => vm.addModule(id);

            // Assert
            act.Should().Throw<ArgumentOutOfRangeException>();
        }

        [Fact]
        public void When_Adding_The_Module_Should_Have_A_UniqueID()
        {
            // Arrange
            var vm = new AddModulesPageVM();
            vm.MCode = "abc";
            vm.MName = "abc";
            vm.Credits = 0;

            // Act
            using var db = new DataBaseContext();
            int id = 1;
            if (db.Modules.Count() != 0)
                id = db.Modules.OrderBy(x => x.ID).Last().ID + 1;

            // Assert
            db.Modules.Where(m=>m.ID== id).Should().HaveCount(0);
        }


        // AddStudent page

        [Fact]
        public void When_FName_IsNull_ForStudent_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddStudentPageVM();
            vm.Fn = null;
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Tel = "abc";
            vm.IsMale = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addStudent(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_LName_IsNull_ForStudent_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddStudentPageVM();
            vm.Fn = "abc";
            vm.Ln = null;
            vm.Addr = "abc";
            vm.Tel = "abc";
            vm.IsMale = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addStudent(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_Addr_IsNull_ForStudent_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddStudentPageVM();
            vm.Fn = "abc";
            vm.Ln = "abc";
            vm.Addr = null;
            vm.Tel = "abc";
            vm.IsMale = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addStudent(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_Tel_IsNull_ForStudent_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddStudentPageVM();
            vm.Fn = "abc";
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Tel = null;
            vm.IsMale = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addStudent(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }
               
        [Fact]
        public void When_Gender_IsNotSelected_ForStudent_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddStudentPageVM();
            vm.Fn = "abc";
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Tel = null;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addStudent(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_Adding_The_Student_Should_Have_A_UniqueID()
        {
            // Arrange
            var vm = new AddStudentPageVM();
            vm.Fn = "abc";
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Tel = "abc";
            vm.IsMale = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;

            // Assert
            db.Students.Where(s=>s.Id==id).Should().HaveCount(0);
        }


        // Add User Page

        [Fact]
        public void When_FName_IsNull_ForUser_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddUserPageVM();
            vm.Fn = null;
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Tel = "abc";
            vm.Email = "abc";
            vm.Pw = "abc";
            vm.IsMale = true;
            vm.IsNormaluser = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addUserNow(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_LName_IsNull_ForUser_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddUserPageVM();
            vm.Fn = "abc";
            vm.Ln = null;
            vm.Addr = "abc";
            vm.Tel = "abc";
            vm.Email = "abc";
            vm.Pw = "abc";
            vm.IsMale = true;
            vm.IsNormaluser = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addUserNow(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_Addr_IsNull_ForUser_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddUserPageVM();
            vm.Fn = "abc";
            vm.Ln = "abc";
            vm.Addr = null;
            vm.Tel = "abc";
            vm.Email = "abc";
            vm.Pw = "abc";
            vm.IsMale = true;
            vm.IsNormaluser = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addUserNow(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_Tel_IsNull_ForUser_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddUserPageVM();
            vm.Fn = "abc";
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Tel = null;
            vm.Email = "abc";
            vm.Pw = "abc";
            vm.IsMale = true;
            vm.IsNormaluser = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addUserNow(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_Email_IsNull_ForUser_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddUserPageVM();
            vm.Fn = "abc";
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Tel = "abc";
            vm.Email = null;
            vm.Pw = "abc";
            vm.IsMale = true;
            vm.IsNormaluser = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addUserNow(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_Password_IsNull_ForUser_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddUserPageVM();
            vm.Fn = "abc";
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Tel = "abc";
            vm.Email = "abc";
            vm.Pw = null;
            vm.IsMale = true;
            vm.IsNormaluser = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addUserNow(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_Gender_IsNotSelected_ForUser_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddUserPageVM();
            vm.Fn = "abc";
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Email = "abc";
            vm.Tel="abc";
            vm.Pw = "abc";
            vm.IsNormaluser = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addUserNow(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_UserType_IsNotSelected_ForUser_ExceptionIsThrown()
        {
            // Arrange
            var vm = new AddUserPageVM();
            vm.Fn = "abc";
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Email = "abc";
            vm.Tel = "abc";
            vm.Pw = "abc";
            vm.IsMale = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;
            Action act = () => vm.addUserNow(id);

            // Assert
            act.Should().Throw<ArgumentNullException>();
        }

        [Fact]
        public void When_Adding_The_User_Should_Have_A_UniqueID()
        {
            // Arrange
            var vm = new AddUserPageVM();
            vm.Fn = "fff";
            vm.Ln = "abc";
            vm.Addr = "abc";
            vm.Email = "abc";
            vm.Tel = "abc";
            vm.Pw = "abc";
            vm.IsMale = true;
            vm.IsAdminUser = true;

            // Act
            using var db = new DataBaseContext();
            int id = 0;
            if (db.Students.Count() == 0)
                id = 1;
            else
                id = db.Students.OrderBy(x => x.Id).Last().Id + 1;

            // Assert
            db.Users.Where(u=>u.Id == id).Count().Should().Be(1);
        }


        // Edit results page

        [Fact]
        public void Should_Initialize_Student_Property_With_Correct_Value()
        {
            // Arrange
            using var db = new DataBaseContext();
            int id = db.Students.Count() + 1;
            var student = new Student(
                                        id,
                                        regNumber: "20210001",
                                        firstName: "John",
                                        lastName: "Doe",
                                        address: "123 Main Street",
                                        telephone: "555-1234",
                                        birthday: new DateOnly(2000, 1, 1),
                                        gender: Gender.Male
                                    );
            // Act
            db.Students.Add( student );
            db.SaveChanges();
            var vm = new EditResultsPageVM(student);
                       
            // Assert
            EditResultsPageVM.Student.Id.Should().Be(student.Id);
            
        }

        [Fact]
        public void Modules_ShouldBeEmpty_WhenNoModulesAreSelected()
        {
            // Arrange
            using var db = new DataBaseContext();
            int id = db.Students.Count() + 1;
            var student = new Student(
                                        id,
                                        regNumber: "20210001",
                                        firstName: "John",
                                        lastName: "Doe",
                                        address: "123 Main Street",
                                        telephone: "555-1234",
                                        birthday: new DateOnly(2000, 1, 1),
                                        gender: Gender.Male
                                    );
            // Act
            student.Modules = null;
            db.Students.Add(student);
            db.SaveChanges();
            var vm = new EditResultsPageVM(student);

            // Assert
            EditResultsPageVM.Modules.Should().BeEmpty();
        }

        [Fact]
        public void Results_ShouldBeEmpty_WhenNoResultsArePresent()
        {
            // Arrange
            using var db = new DataBaseContext();
            int id = db.Students.Count() + 1;
            var student = new Student(
                                        id,
                                        regNumber: "20210001",
                                        firstName: "John",
                                        lastName: "Doe",
                                        address: "123 Main Street",
                                        telephone: "555-1234",
                                        birthday: new DateOnly(2000, 1, 1),
                                        gender: Gender.Male
                                    );
            // Act
            student.Results = null;
            db.Students.Add(student);
            db.SaveChanges();
            var vm = new EditResultsPageVM(student);

            // Assert
            EditResultsPageVM.Results.Should().BeEmpty();
        }

        [Fact]
        public void There_ShouldBe_No_Results_With_Modules_OtherThan_SelectedModules()
        {
            using var db = new DataBaseContext();
            int id = db.Students.Count() + 1;
            var student = new Student(
                                        id,
                                        regNumber: "20210001",
                                        firstName: "John",
                                        lastName: "Doe",
                                        address: "123 Main Street",
                                        telephone: "555-1234",
                                        birthday: new DateOnly(2000, 1, 1),
                                        gender: Gender.Male
                                    );
            // Act
            int mId = db.Modules.Count() + 1;
            var module = new Module(mId, "abc", "abc", 2);
            int rId = db.Results.Count() + 1;
            var result = new Result(rId, module, 30);
            student.Results.Add(result);
            db.Students.Add(student);
            db.SaveChanges();

            Action action = () => new EditResultsPageVM(student);

            // Assert
            action.Should().Throw<InvalidOperationException>();
        }



    }
}