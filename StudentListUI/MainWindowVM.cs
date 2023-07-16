using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using StudentListUI.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;

namespace StudentListUI
{
    public  partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public  ObservableCollection<User> users;
        [ObservableProperty]
        public User selectedUser=null;

        public Action CloseAction { get; set; }

        [RelayCommand]
        public void Exit()
        {
            CloseAction();
        }

        public void CloseMainWindow()
        {
            Application.Current.MainWindow.Close();
        }

        [RelayCommand]
        public void message()
        {

            MessageBox.Show($"{selectedUser.FirstName} GPA value must be between 0 and 4.", "Error");
        }

        [RelayCommand]
        public void AddStudent()
        {
            var adduser = new AddUserVM();
            adduser.title = "Add a New User";
            AddUserWindow window = new AddUserWindow(adduser);
            window.ShowDialog();


            
            if (adduser.Student != null)
            {
                if (adduser.Student.FirstName != null && adduser.Student.Regno != null)
                {
                    users.Add(adduser.Student);
                }
            }
        }

        [RelayCommand]
        public void Delete()
        {
            if (selectedUser != null)
            {
                string Fstname = selectedUser.FirstName;
                users.Remove(selectedUser);
                MessageBox.Show($" {Fstname} is Deleted ", "DELETED \a ");
                
            }
            else
            {
                MessageBox.Show("Select a Student to Delete.", "Error");


            }
        }
        [RelayCommand]
        public void ExecuteEditStudentCommand()
        {
            if (selectedUser != null)
            {
                var edtusr = new AddUserVM(selectedUser);
                edtusr.title = "Edit the Details of Selected User";
                var window = new AddUserWindow(edtusr);

                window.ShowDialog();


                int index = users.IndexOf(selectedUser);
                users.RemoveAt(index);
                users.Insert(index, edtusr.Student);



            }
            else
            {
                MessageBox.Show("Select a Student to Edit Details", "Warning!");
            }
        }

        public  MainWindowVM()
        {
            users = new ObservableCollection<User>();
            BitmapImage image1 = new BitmapImage(new Uri("/Model/Images/1.png", UriKind.Relative));
            users.Add(new User( 565, "kamal", "Prabhath", "12/1/2000",image1,2.56));
            BitmapImage image2 = new BitmapImage(new Uri("/Model/Images/2.png", UriKind.Relative));
            users.Add(new User( 232,"Rohana", "Kumara", "30/11/1999",image2,3.125));
            BitmapImage image3 = new BitmapImage(new Uri("/Model/Images/3.png", UriKind.Relative));
            users.Add(new User(121, "Thissa", "Wijekoon", "22/01/2001",image3,2.32));
            BitmapImage image4= new BitmapImage(new Uri("/Model/Images/4.png", UriKind.Relative));
            users.Add(new User(898, "Pubudu", "Chathuranga", "22/08/1999", image4,3.89));

        }
    }
}
