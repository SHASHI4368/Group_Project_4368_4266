   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  5      I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  5      (    "Group_Project_2.Pages.EditUserPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:Group_Project_2.Pages     5      <local1)clr-namespace:Group_Project_2.View_Models     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5        N� Title$  EditUserPage��5       � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5       � DataContext 5      0   *Group_Project_2.View_Models.EditUserPageVM  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��40��6     
backButton#��[ 6*   $
��Left=�6N   $
��15 0q�6i   $	��110��6w   ��6�   �� *goBackCommand+.��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�6(   $��15��69   $��15��6E     gridButtonIcon#��[ 6P   $��0q�6x   $��0q�6�   $��Center=�6�   �� 5      $
��Back��6   $��22(�6(   $��	 10 0 0 0q�66   $��SemiBold"�6I   5      5      �� 5    
   $��1��6   $��Center=�6!   $��30(�6>   $��SemiBold"�6L   $��	Edit User��6b   $��0 0 0 10q�6s     	titleText#��[ 6�   � 5"   
   $��2��6    � ColumnDefinitions 5#      �� 5$      $��* �6#   �� 5%      $��* �6#    5'      �� 5(      $
��auto �6    �� 5)      $
��auto �6    �� 5*      $
��auto �6    �� 5+      $
��auto �6    �� 5,      $
��auto �6    .+�50      �� $��0��6   $��0��6)   .+�51      �� .+�52      �� $��
First Name��6    $��18(�62   $��
20 10 10 0q�6@     loginTBTitle#��[ 6T   � 53      .+�54      �� $��Center=�6$    J� IsHitTestVisible$ False��6?   $��30 10 20 10q�6X    K� ZIndex$ 1��6m   $��18(�6~   $��Enter First Name��6�     textHint#��[ 6  y�6�   �� 	 �� ElementName$	 fName��
 �� Path$
 Text.IsEmpty� �� 	Converter# [  6  �� 55      -   5         ��Name$ fName��55   H     loginTextBox#��[ 6"   $��20 10 20 10q�6W   $��18(�6l   ��6z   �� *User.FirstName+ �� UpdateSourceTrigger$ PropertyChanged=�56      57      58      �� 5;      $��1��6   $��0��6)   .+�5<      �� .+�5=      �� $��	Last Name��6    $��18(�61   $��
20 10 10 0q�6?   #��[ 6S   � 5>      .+�5?      �� $��Center=�6$   $ False��6?   $��30 10 20 10q�6X   $ 1��6m   $��18(�6~   $��Enter Last Name��6�   #��[ 6  y�6�   �� $	 lName��$
 Text.IsEmpty�# [  6  �� 5@      -   5        $ lName��5@   H   #��[ 6"   $��20 10 20 10q�6W   $��18(�6l   ��6z   �� *User.LastName+$ PropertyChanged=�5A      5B      5C      �� 5F      $��0��6   $��1��6)   $��2��66   .+�5G      �� .+�5H      �� $��Address��6    $��18(�6/   $��
20 10 10 0q�6=   #��[ 6Q   � 5I      .+�5J      �� $��Center=�6$   $ False��6?   $��30 10 20 10q�6X   $ 1��6m   $��18(�6~   $��Enter Address��6�   #��[ 6  y�6�   �� $
	 addr��$
 Text.IsEmpty�# [  6  �� 5K      -   5        $
 addr��5K   H   #��[ 6"   $��20 10 20 10q�6V   $��18(�6k   ��6y   �� *User.Address+$ PropertyChanged=�5L      5M      5N      �� 5Q      $��0��6   $��2��6)   .+�5R      �� .+�5S      �� $��E-mail��6    $��18(�6.   $��
20 10 10 0q�6<   #��[ 6P   � 5T      .+�5U      �� $��Center=�6$   $ False��6?   $��30 10 20 10q�6X   $ 1��6m   $��18(�6~   $��Enter E-mail��6�   #��[ 6  y�6�   �� $	 email��$
 Text.IsEmpty�# [  6  �� 5V      -   5        $ email��5V   H   #��[ 6"   $��20 10 20 10q�6W   $��18(�6l   ��6z   �� *
User.Email+$ PropertyChanged=�5W      5X      5Y      �� 5\      $��1��6   $��2��6)   .+�5]      �� .+�5^      �� $��	Telephone��6    $��18(�61   $��
20 10 10 0q�6?   #��[ 6S   � 5_      .+�5`      �� $��Center=�6$   $ False��6?   $��30 10 20 10q�6X   $ 1��6m   $��18(�6~   $��Enter Telephone��6�   #��[ 6  y�6�   �� $		 tel��$
 Text.IsEmpty�# [  6  �� 5a      -   5        $	 tel��5a   H   #��[ 6"   $��20 10 20 10q�6U   $��18(�6j   ��6x   �� *User.Telephone+$ PropertyChanged=�5b      5c      5d      �� 5g      $��0��6   $��3��6)   .+�5h      �� .+�5i      �� $��Gender��6    $��18(�6.   $��
20 10 10 0q�6<   #��[ 6P   �� 5j      $ 
Horizontal=�6!   .+�5k      	�  	� 	GroupName$ gender��6&   $
��Male��69   $��18(�6H   $��80 10 20 10q�6V   $��Center=�6k    	 radio#��[ 6�    d� 	IsChecked 6�   �� *IsMale+$ PropertyChanged=�6�   	� 5l      $ gender��6&   $��Female��69   $��18(�6J   $��50 10 20 10q�6X   $��Center=�6m   #��[ 6�    6�   �� *
IsFemale+$ PropertyChanged=�6�   5m      5n      5o      �� 5t      $��0��6   $��4��6)   .+�5u      �� .+�5v      �� $��Password��6    $��18(�60   $��
20 10 10 0q�6>   #��[ 6R   � 5w      .+�5x      �� $��Center=�6$   $ False��6?   $��30 10 20 10q�6X   $ 1��6m   $��18(�6~   $��Enter Password��6�   #��[ 6  y�6�   �� $	 pw��$
 Text.IsEmpty�# [  6  �� 5y      -   5        $ pw��5y   H   #��[ 6"   $��20 10 20 10q�6T   $��18(�6i   ��6w   �� *User.Password+$ PropertyChanged=�5z      5{      5|      5}      �� 5   
   -   5          loginButton#��[ 5      $��80 20 80 30q�66   $��Save Changes��6K   
������ $��18(�6}   $��SemiBold"�6�   $��3��6�   $��60��6�   $	��150��6�   ��6�   �� *changeUserCommand+6�   5�      5�      