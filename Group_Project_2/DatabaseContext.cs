using Group_Project_2.entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Group_Project_2
{
    public class DataBaseContext : DbContext
    {
        public string Path { get; set; }

        public DataBaseContext()
        {
            // Get the installed location of the application
            string appPath = AppDomain.CurrentDomain.BaseDirectory;

            // Set the path for the database file
            Path = @$"{appPath}\SMS.db";
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder
                .UseSqlite($"Data Source ={Path}")
                .EnableSensitiveDataLogging();
        }

        public DbSet<Student> Students { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Module> Modules { get; set; }
        public DbSet<Result> Results { get; set; }


    }
}
