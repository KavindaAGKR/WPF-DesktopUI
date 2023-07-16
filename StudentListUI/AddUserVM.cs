using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StudentListUI.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace StudentListUI
{
    public partial class AddUserVM : ObservableObject

    {
        [ObservableProperty]
        public int regno ;

        [ObservableProperty]
        public string firstname;

        [ObservableProperty]
        public string lastname;

       
        [ObservableProperty]
        public string dateofbirth;

        [ObservableProperty]
        public double gpa;

    

        [ObservableProperty]
        public string title;

        [ObservableProperty]
        public BitmapImage selectedImage;



        public AddUserVM(User u)
        {
            Student = u;

            regno = Student.Regno;
            firstname  = Student.FirstName;
            lastname = Student.LastName;
            gpa = Student.GPA;
            dateofbirth = Student.DateofBirth;
            selectedImage=Student.Image;   
        }
        public AddUserVM()
        {
            
        }

      
        [RelayCommand]
        public void UploadPhoto()
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "Image files | *.bmp; *.png; *.jpg";
            dialog.FilterIndex = 1;
            if (dialog.ShowDialog() == true)
            {
                selectedImage = new BitmapImage(new Uri(dialog.FileName));
               
                MessageBox.Show("Imgae successfuly uploded!", "successfull");
            }
        }

        public User Student { get; private set; }
        public Action CloseAction { get; internal set; }


        [RelayCommand]
        public void Exit()
        {
            CloseAction();
        }


        [RelayCommand]
        public void Save()
        {
          
            
            
            if (gpa<0 || gpa>4) {
                MessageBox.Show("GPA value must be between 0 and 4.", "Error" );
                return;
            }
            if(Student==null)
            {

                Student = new User()
                {
                    Regno = regno,
                    FirstName = firstname,
                    LastName = lastname,
                    DateofBirth = dateofbirth,
                    Image = selectedImage,
                    GPA = gpa

                };


            }
            else
            {

                Student.Regno = regno;
                Student.FirstName = firstname;
                Student.LastName = lastname;
                Student.GPA = gpa;
                Student.Image = selectedImage;
                Student.DateofBirth = dateofbirth;
  
            }
           
            if(Student.FirstName != null ) { 

                CloseAction(); }
            Application.Current.MainWindow.Show();


        }
    }
}
