   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  5      I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  69   *    $Group_Project_2.Pages.NormalUserPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      1local#clr-namespace:Group_Project_2.Pages   5      =view_models)clr-namespace:Group_Project_2.View_Models   69     N� Title$  NormalUserPage��5
       � DataContext 5      2   ,Group_Project_2.View_Models.NormalUserPageVM  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��2��6$   $��1��68   $��Center=�6E   $��35(�6b   $��SemiBold"�6p   $��Normal User��6�      	titleText#��[  6�   $��0 0 0 0q�6�   �� 5   
   ���#ffffff$��1q�6'    �� CornerRadius$ 30��6;   $��2��6M    �� Padding$ 	0 20 0 50q�6Z   ���#ffffff J� Opacity$	 0.5Q�6�   $	��500��6�   $	��400��6�   $��Center=�6�   $��Right=�6�   ._�5      �  5      �� 5      $
��auto �6$   �� 5      $��* �6$   �� 5       $
��auto �6$   .+�5"      �� $��Personal Details��6   $��25(�64   $��SemiBold"�6B   $��Center=�6X   $��0 0 0 10q�6u   $��0��6�   #��[  6�   ���#0000006�   � 5#      $��1��6   $��Center=�6$    5$      �� 5%      $
��auto �6+   �� 5&      $
��auto �6+   �� 5'      $��* �6+    5)      �� 5*      $
��auto �6(   �� 5+      $
��auto �6(   �� 5,      $
��auto �6(   �� 5-      $
��auto �6(   .+�50      �� $
��Name��6    $��Right=�6,   $��0��6H   $��0��6X   $��
20 20 10 0q�6e     windowTBTitle#��[ 6y   �� 51      $��Address��6    $��Right=�6/   $��0��6K   $��1��6[   $��
20 20 10 0q�6h   #��[ 6|   �� 52      $��	Telephone��6    $��Right=�61   $��0��6M   $��2��6]   $��
20 20 10 0q�6j   #��[ 6~   �� 53      $��E-mail��6    $��Right=�6.   $��0��6J   $��3��6Z   $��
20 20 10 0q�6g   #��[ 6{   �� 55      $��:��6    $
��Left=�6)   $��1��6D   $��0��6T   $��
10 20 10 0q�6a   #��[ 6u   �� 56      $��:��6    $
��Left=�6)   $��1��6D   $��1��6T   $��
10 20 10 0q�6a   #��[ 6u   �� 57      $��:��6    $
��Left=�6)   $��1��6D   $��2��6T   $��
10 20 10 0q�6a   #��[ 6u   �� 58      $��:��6    $
��Left=�6)   $��1��6D   $��3��6T   $��
10 20 10 0q�6a   #��[ 6u   �� 5:      $
��Left=�6[   $��2��6v   $��0��6�   $��
10 20 10 0q�6�   #��[ 6�   $��20(�6�   $
��Wrap=�6�   ��6    �� *User.FullName+ �� UpdateSourceTrigger$ Default=�6�   �� 5;      $
��Left=�6q   $��2��6�   $��1��6�   $��
10 20 10 0q�6�   #��[ 6�   $
��Wrap=�6�   $��20(�6�   ��6    �� *User.Address+ �� Mode$ TwoWay=�$ PropertyChanged=�6�   �� 5<      $
��Left=�6q   $��2��6�   $��2��6�   $��
10 20 10 0q�6�   #��[ 6�   $��20(�6�   ��6    �� *User.Telephone+$ PropertyChanged=�$ TwoWay=�6�   �� 5=      $
��Left=�6m   $��2��6�   $��3��6�   $��
10 20 10 0q�6�   #��[ 6�   $��20(�6�   $
��Wrap=�6�   ��6    �� *
User.Email+$ PropertyChanged=�$ TwoWay=�6�   5>      �� 5@      $��Right=�6   
������ $��2��6O     	TopButton#��[ 6�   $��10 10 20 -20q�6�   ��6\   �� *changeUserNowCommand+.��5A      /  )MahApps.Metro.IconPacks.MaterialExtension  	   Kind$	 PencilOutline=�6$   3  -MahApps.Metro.IconPacks.BasePackIconExtension
   Width$
 15Q�69      Height$ 15Q�6E   5B      5C      5D      �� 5F   
   $��1��6   $��2��6%   $��Center=�62   $
��Left=�6M   $��	140 0 0 0q�6h   .+�5G      ��   loginButton#��[ 6   $��Center=�6:   $��0 10 0 0q�6W   $��Add Student��6i   
������ $	��230��6�   $��22(�6�   $��SemiBold"�6�   $��70��6�   ��6�   �� *addStudentCommand+6�   �� 5H      #��[ 6   $��Center=�6:   $��0 30 0 0q�6W   $��Edit Student��6i   
������ $	��230��6�   $��22(�6�   $��SemiBold"�6�   $��70��6�   ��6�   �� *editStudentCommand+6�   �� 5I      #��[ 6   $��Center=�6:   $��0 30 0 0q�6W   $��Results��6i   
������ $	��230��6�   $��22(�6�   $��70��6�   $��SemiBold"�6�   ��6�   �� *addResultsCommand+�� 5J      #��[ 6   $��Center=�6:   $��0 30 0 0q�6W   
������ $	��230��6�   $��22(�6�   $��70��6�   $��SemiBold"�6�   ��6�   �� *logOutCommand+.��5K      ��  �� Orientation$ 
Horizontal=�6   .+�5L      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Logout=�6,   $��20��6:   $��20��6F     gridButtonIcon#��[ 6Q   �� 5M      $��Log Out��6    $��22(�6/   $��	 10 0 0 0q�6=   $��SemiBold"�6P   5N      5O      5P      5R      5S      