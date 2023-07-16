using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace StudentListUI.Model
{
    public class User
    {
        public int Regno { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public BitmapImage Image { get; set; }  

        public string  DateofBirth{ get; set; }

        public Double GPA { get; set; }

        public String ImagePath
        {
            get { return $"/Model/Images/{Image}"; }
        }

        public User(int regno, string firstName, string lastName, string dateofbirth,BitmapImage  image , double gpa)
        {
            Regno = regno;
            FirstName = firstName;
            LastName = lastName;
            DateofBirth = dateofbirth;
            Image = image;
            GPA = gpa;
        }

        public User()
        {
        }
    }
}
