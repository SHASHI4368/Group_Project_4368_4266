   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  5      I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  69   +    %Group_Project_2.Pages.EditStudentPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:Group_Project_2.Pages     5      <local1)clr-namespace:Group_Project_2.View_Models     69     N� Title$  EditStudentPage��5
       � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5       � DataContext 5      3   -Group_Project_2.View_Models.EditStudentPageVM  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��3* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��40��6     
backButton#��[ 6*   $
��Left=�6N   $
��15 0q�6i   $	��110��6w   ��6�   �� *goBackCommand+.��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�6(   $��15��69   $��15��6E     gridButtonIcon#��[ 6P   $��0q�6x   $��0q�6�   $��Center=�6�   �� 5      $
��Back��6   $��22(�6(   $��	 10 0 0 0q�66   $��SemiBold"�6I   5      5      �� 5!   
   $��1��6   $��Center=�6!   $��25(�6>   $��SemiBold"�6L   $��Edit Student��6b   $��0 -20 0 20 q�6v     	titleText#��[ 6�   � 5#   
   $��2��6   $��	0 -10 0 0q�6    � ColumnDefinitions 5$      �� 5%      $��* �6#   �� 5&      $��* �6#    5(      �� 5)      $
��auto �6    �� 5*      $
��auto �6    �� 5+      $
��auto �6    �� 5,      $
��auto �6    .+�50      �� $��0��6   $��0��6)   .+�51      �� .+�52      �� $��
First Name��6    $��18(�62   $��
20 10 10 0q�6@     loginTBTitle#��[ 6T   � 53      .+�54      �� $��Center=�6$   ���#575b5e J� IsHitTestVisible$ False��6T   $��30 10 20 10q�6m    K� ZIndex$ 1��6�   $��18(�6�   $��Enter First Name��6�     textHint#��[ 6  y�6�   �� 	 �� ElementName$	 fName��
 �� Path$
 Text.IsEmpty� �� 	Converter# [  6  �� 55      -   5         ��Name$ fName��55   H     loginTextBox#��[ 6"   $��20 10 20 10q�6W   $��18(�6l   ��6z   �� *Student.FirstName+56      57      58      �� 5;      $��1��6   $��0��6)   .+�5<      �� .+�5=      �� $��	Last Name��6    $��18(�61   $��
20 10 10 0q�6?   #��[ 6S   � 5>      .+�5?      �� $��Center=�6$   ���#575b5e$ False��6T   $��30 10 20 10q�6m   $ 1��6�   $��18(�6�   $��Enter Last Name��6�   #��[ 6  y�6�   �� $	 lName��$
 Text.IsEmpty�# [  6  �� 5@      -   5        $ lName��5@   H   #��[ 6"   $��20 10 20 10q�6W   $��18(�6l   ��6z   �� *Student.LastName+5A      5B      5C      �� 5F      $��0��6   $��1��6)   $��2��66   .+�5G      �� .+�5H      �� $��Address��6    $��18(�6/   $��
20 10 10 0q�6=   #��[ 6Q   � 5I      .+�5J      �� $��Center=�6$   ���#575b5e$ False��6T   $��30 10 20 10q�6m   $ 1��6�   $��18(�6�   $��Enter Address��6�   #��[ 6  y�6�   �� $
	 addr��$
 Text.IsEmpty�# [  6  �� 5K      -   5        $
 addr��5K   H   #��[ 6"   $��20 10 20 10q�6V   $��18(�6k   ��6y   �� *Student.Address+5L      5M      5N      �� 5Q      $��0��6   $��2��6)   .+�5R      �� .+�5S      �� $��	Telephone��6    $��18(�61   $��
20 10 10 0q�6?   #��[ 6S   � 5T      .+�5U      �� $��Center=�6$   ���#575b5e$ False��6T   $��30 10 20 10q�6m   $ 1��6�   $��18(�6�   $��Enter Telephone��6�   #��[ 6  y�6�   �� $		 tel��$
 Text.IsEmpty�# [  6  �� 5V      -   5        $	 tel��5V   H   #��[ 6"   $��20 10 20 10q�6U   $��18(�6j   ��6x   �� *Student.Telephone+5W      5X      5Y      �� 5\      $��0��6   $��3��6*   .+�5]      �� $��Date of Birth��6   $��18(�61   $��
20 10 10 0q�6?   #��[ 6S   � 5^       5_      �� 5`      $��* �6+   �� 5a      $
��auto �6+   .+�5c      (  "System.Windows.Controls.DatePicker  -   5          Name$ 
datePicker��5c   K     DatePickerStyle2#��[ 6!   $��0��6`   $y�Hidden=�6p   $��Center=�6�   $��Right=�6�   $��65 -15q�6�      SelectedDate 6�   �� *DatePickerDate+ �� Mode$ TwoWay=�6�   �� 5d      -   5         ��Name$	 cal��5d      $��	10 5 20 0q�6*   $��1��6I     	TopButton#��[ 6Y   .��5e        $ Calendar=�60   $��20��6@   $��20��6L   #��[ 6W   5f      �� 5g      $��2��6    �� CornerRadius$ 5 5 5 5��6*   ���#d3ddeb J� Opacity$	 0.5Q�6W   ���#d3ddeb �� Padding$ 15 8 0 0q�6z   $��35��6�   $��	20 5 10 0q�6�   ._�5h      �� $��18(�6r   ���#232629$��5 -3 0 0q�6�   ��6$   �� *SelectedDate+$	 
datePicker�� �� StringFormat$ {0:d}��6�   5i      5j      5k      �� 5n      $��1��6   $��2��6)   .+�5o      �� .+�5p      �� $��Gender��6    $��18(�6.   $��
20 10 10 0q�6<   #��[ 6P   �� 5q      $ 
Horizontal=�6!   .+�5r      	�  	� 	GroupName$ gender��6&   $
��Male��69   $��18(�6H   $��80 10 20 10q�6V   $��Center=�6k    		 radio#��[	 6�    d� 	IsChecked 6�   �� *IsMale+6�   	� 5s      $ gender��6&   $��Female��69   $��18(�6J   $��50 10 20 10q�6X   $��Center=�6m   #��[	 6�    6�   �� *
IsFemale+6�   5t      5u      5v      5w      � 5x   
   $��3��6    5y      �� 5z      $��* �6#   �� 5{      $��* �6#    5}      �� 5~      $
��auto �6    �� 5      $��* �6    .+�5�      �� $��0��6   $��0��6%   $
��Left=�65   $��Available Modules��6P   $��18(�6i   $��	20 10 0 0q�6w   #��[ 6�   &   System.Windows.Controls.DataGrid  5�      -   5          Name$ amGrid��5�   �    
 DataGridRowStyle1   RowStyle# � 
 6     DataGridStyle1#���  6F     DataGridCellStyle1   	CellStyle# �  6o     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6�   $��0��6�   $��1��6  $��20 10 20 20q�6     AutoGenerateColumns$ False��6C  ��6#  �� *	Modules+   Columns 5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Header$ Select��6-      
IsReadOnly$
 True��6=      CanUserResize$ False��6O       Width5  /System.Windows.Controls.DataGridLengthConverter$
  auto 6e   !   CellTemplate! 5�      �� 5�      .R�5�   "   �� " ��Name$" cb��6+   -   5        $��Center=�5�   �   $��Center=�6�    67   �� *validateCheck+��6p   �� # �� UpdateSourceTrigger$# PropertyChanged=�6�   5�      5�        5�      $ Module Code��6-   $
 True��6B   $ False��6T   $
  auto 6j   ! 5�      �� 5�      .R�5�   "   �� $��Center=�6H   ��6,   �� *
ModuleCode+6H   5�      5�        5�      $ Module Name��6-   $
 True��6B   $ False��6T   $  * 6j   ! 5�      �� 5�      .R�5�   "   �� $
��Left=�6H   $��20 0 0 0q�6c   $
��Wrap=�6u   ��6,   �� *
ModuleName+6u   5�      5�      5�      �� 5�      $��0��6   $��1��6%   $
��Left=�65   $��Selected Modules��6P   $��18(�6h   $��	20 10 0 0q�6v   #��[ 6�     5�      -	   5        $ smGrid��5�   P  # � 
 6   #���  6F   # �  6o   # �  6�   $��1��6�   $��1��6�   $��20 10 20 20q�6�   $ False��64  ��6  �� *
SModules+ 5�        5�      $ Select��6-   $
 True��6=   $ False��6O   $
  auto 6e   ! 5�      �� 5�      .R�5�   "   �� $	" cb1��6+   -
   5        $
 TrueY�5�   R   $��Center=�6�   $��Center=�6�   ��6c   �� $# PropertyChanged=�6�   5�      5�        5�      $ Module Code��6-   $
 True��6B   $ False��6T   $
  auto 6j   ! 5�      �� 5�      .R�5�   "   �� $��Center=�6H   ��6,   �� *
ModuleCode+6H   5�      5�        5�      $ Module Name��6-   $
 True��6B   $ False��6T   $  * 6j   ! 5�      �� 5�      .R�5�   "   �� $
��Left=�6H   $��20 0 0 0q�6c   $
��Wrap=�6u   ��6,   �� *
ModuleName+6u   5�      5�      5�      5�      �� 5�   
   -   5          loginButton#��[ 5�      $��0 -5 0 5q�67   $��Save Changes��6I   
������ $	��150��6{   $��60��6�   $��18(�6�   $��SemiBold"�6�   $��4��6�   ��6�   �� *ChangeStudentCommand+5�      5�      