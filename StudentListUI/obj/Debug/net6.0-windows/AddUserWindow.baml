   M S B A M L   `   `   `  ����H  DStudentListUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:StudentListUIStudentListUI  5   	   !    StudentListUI.AddUserWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:StudentListUI     5   	     � WindowStyle$
  None=�5   
    � WindowStartupLocation$ CenterScreen=�5	   	   
������  � AllowsTransparency$
 True��5
   "   $	��400��5   E   $	��500��6R    � Title 6	   �� *Title+ �� UpdateSourceTrigger$ PropertyChanged=� � DataContext 5         StudentListUI.AddUserVM  5   
   .��5      �� 
���   �$��2q�6!    �� CornerRadius$ 30��65   ���#C0C0C0._�5      � $	��400��6   $
��Auto��6   .+�5   
   �� 
������ 
������ $��30��6D   $��30��6O   $��450,0,0,350q�6[   ��6p   �� *ExitCommand+.��5      �� $G��A C:\Users\User\Desktop\Group Final\MyApp\Models\Images/cross.png ��6   5      �� 5   
   $��Add a New Student��6   $��Center=�6-   $��0,20,0,0q�6J   
����  �$��18(�5   *   $��Medium"�68   �� 5   
   $	��150��6   $
��Auto��6!   $��	30,60,0,0q�6/   $	��Top=�6B   $
��Left=�6Z   .+�5      �� $��13(�6   $��Registration Number:��6&   $��20��6B   $��0,10,0,0q�6N   $��1��6`   �� 5      $��13(�6   $��First Name:��6&   $��20��69   $��0,10,0,0q�6E   �� 5      $��13(�6   $��
Last Name:��6&   $��20��68   $��0,10,0,0q�6D   �� 5      $��13(�6   $��Date of Birth:��6&   $��20��6<   $��0,10,0,0q�6H   �� 5       $��13(�6   $��
GPA Value:��6&   $��20��68   $��0,10,0,0q�6D   �� 5"      $��Upload a Photo��6   $��0,30,0,0q�6.   $	��150��6@   $��40��6L   $
��Left=�6X      Adduserbutton#��[  6�   ��6s   �� *UploadPhotoCommand+6�   5%      �� 5(   
   $	��290��6   $
��Auto��6!   $��	0,60,30,0q�6/   $	��Top=�6B   $��Right=�6Z   .+�5)      �� $��0,10,0,0q�6R   $��20��6e   ��6   �� *Regno+$ PropertyChanged=�6e   �� 5*      $��0,10,0,0q�6V   $��20��6h   ��6   �� *	Firstname+$ PropertyChanged=�6h   �� 5+      $��0,10,0,0q�6U   $��20��6g   ��6   �� *
Lastname+$ PropertyChanged=�6g   �� 5,      $��0,10,0,0q�6X   $��20��6j   ��6   �� *Dateofbirth+$ PropertyChanged=�6j   �� 5-      $��0,10,0,0q�6P   $��20��6b   ��6   �� *Gpa+$ PropertyChanged=�6b   5/      �� 50   
   $
��Save��6   $��0,0,0,50q�6@   $	��150��6R   $��Bottom=�6^   #��[  6y   ��6    �� *SaveCommand+6y   52      53      54      