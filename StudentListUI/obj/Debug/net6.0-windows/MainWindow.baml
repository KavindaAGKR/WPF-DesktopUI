   M S B A M L   `   `   `  ����H  DStudentListUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:StudentListUIStudentListUI  5   	       StudentListUI.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:StudentListUI     5   	     � WindowStyle$
  None=�5   
    � WindowStartupLocation$ CenterScreen=�5	   	   
������  � AllowsTransparency$
 True��5
   "    � Title$ 
MainWindow��5   	   $	��900��6   $	��600��6(    � DataContext 5          StudentListUI.MainWindowVM  5   
   .��5      ��  �� CornerRadius$ 30��6   ���#C6ECCF���#B9DE50$��2q�6L   ._�5   
   � 
������ .+�5      �� $	��600��6   $	��700��6'   
������ $��Center=�6L    �� Orientation$ Vertical=�6g   $
��Left=�6~   $��	200,0,0,0q�6�   .+�5      �� 
������ 
������ $��Right=�6L   $��30��6h   $��30��6s   $��	0,10,20,0q�6   ��6�   �� *ExitCommand+.��5      �� $G��A C:\Users\User\Desktop\Group Final\MyApp\Models\Images/cross.png ��6   5      � 5      .+�5      �� $��List of Students��6    $��SemiBold"�68   $��30(�6O   ���#0a5257$��Center=�6s   $��0,0,0,30q�6�   5      �� 5       $
��Left=�6   $	��680��68   
������ $ 
Horizontal=�6^   .+�5"      �� $��Reg. No.��6    $��90,0,0,0q�60      ListView#��[  6D   $��13(�6f   �� 5#      $��
First Name��6    $��30,0,0,0q�62   #��[  6F   $��13(�6h   �� 5$      $��	Last Name��6    $��50,0,0,0q�61   #��[  6F   $��13(�6h   �� 5%      $��Date of Birth��6    $
��auto��65   $��70,0,0,0q�6B   #��[  6V   $��13(�6x   �� 5&      $��	GPA value��6!   $��40,0,0,0q�62   #��[  6F   $��13(�6h   5(      �� 5)      -   5         ��Name$ Listview��5)      
������ 
������ $	��490��6`   $	��700��5*   a   $
��Left=�6�    J� RenderTransformOrigin$ 0.527,0.422&�6�   ��5)   m   �� *Users+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� SelectedItem
 5*      �� *SelectedUser+$	 PropertyChanged=���5+      �� 5,      .R�5.      �� $	��650��6)   
������ $ 
Horizontal=�6O   $
��Left=�6h   .+�50   "   �� $��30��6(   $��30��63   $��
20,15,0,15q�6?   ��6S   �� *Image+�� 51   "     	ListView2#��[ 6i   $��
40,20,0,20q�6�   ��6,   �� *Regno+$	 PropertyChanged=�6�   �� 52   "   $	��100��6,   #��[ 6y   $��
30,20,0,20q�6�   ��68   �� *	FirstName+$	 PropertyChanged=�6�   �� 53   "   $	��125��6,   #��[ 6x   $��
15,20,0,20q�6�   ��68   �� *
LastName+$	 PropertyChanged=�6�   �� 54   "   $��80��6,   #��[ 6z   $��
20,20,0,20q�6�   ��67   �� *DateofBirth+$	 PropertyChanged=�6�   �� 55   "   #��[ 6g   $��40��6�   $��
50,20,0,20q�6�   ��6,   �� *GPA+$	 PropertyChanged=�6�   57      5:      5=      5>      �� 5@      ���#266E73$��	0,0,700,0q�6+   $	��1.5q�6>   
�������$	��200��6i   $ 	30,0,0,30��6u   ._�5B      �� $	��600��6   $��Center=�5C      
������ $
��Left=�5D   /   $	��200��6J   .+�5E      �� $
��auto��6!   .+�5G      �� $��Add Student��6!     
Mainbutton#��[ 6^   $��	0,150,0,0q�6�   ��67   �� *AddStudentCommand+6�   �� 5H      $��Edit Student��6!   #��[ 69   $��0,50,0,0q�6�   ��6]   �� *" ExecuteEditStudentCommandCommand+6�   �� 5I      $��Delete Student��6!   #��[ 6;   $��0,50,0,0q�6�   ��6_   �� *DeleteCommand+6�   5J      5K      5M      5O      5P      5Q      