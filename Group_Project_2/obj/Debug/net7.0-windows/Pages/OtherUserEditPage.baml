   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  5      g cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137akOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.MaterialMahApps.Metro.IconPacks 69   I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  6�   -    'Group_Project_2.Pages.OtherUserEditPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:Group_Project_2.Pages     5      `IconOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.Material     69   <local1)clr-namespace:Group_Project_2.View_Models     6�     N� Title$  OtherUserEditPage��5	       � 	Resources 5
         	BoolToVis��%   &	        �� 5   
   6'   5       � DataContext 5      5   /Group_Project_2.View_Models.OtherUserEditPageVM  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��40��6     
backButton#��[ 6*   $
��Left=�6N   $
��15 0q�6i   $	��110��6w   ��6�   �� *goBackCommand+.��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�6(   $��15��69   $��15��6E     gridButtonIcon#��[ 6P   $��0q�6x   $��0q�6�   $��Center=�6�   �� 5      $
��Back��6   $��22(�6(   $��	 10 0 0 0q�66   $��SemiBold"�6I   5      5      �� 5   
   $��1��6   $��Center=�6!   $��30(�6>   $��SemiBold"�6L   $��	Edit User��6b   $��0 0 0 10q�6s     	titleText#��[ 6�   � 5    
   $��2��6    � ColumnDefinitions 5!      �� 5"      $��* �6#   �� 5#      $��* �6#    5%      �� 5&      $
��auto �6    �� 5'      $
��auto �6    �� 5(      $
��auto �6    �� 5)      $
��auto �6    �� 5*      $
��auto �6    .+�5.      �� $��0��6   $��0��6)   .+�5/      �� .+�50      �� $��
First Name��6    $��18(�62   $��
20 10 10 0q�6@     loginTBTitle#��[ 6T   � 51      .+�52      �� $��Center=�6$   ���#575b5e J� IsHitTestVisible$ False��6T   $��30 10 20 10q�6m    K� ZIndex$ 1��6�   $��18(�6�   $��Enter First Name��6�     textHint#��[ 6  y�6�   �� 	 �� ElementName$	 fName��
 �� Path$
 Text.IsEmpty� �� 	Converter# [  6  �� 53      -   5         ��Name$ fName��53   H     loginTextBox#��[ 6"   $��20 10 20 10q�6W   $��18(�6l   ��6z   �� *User.FirstName+ �� UpdateSourceTrigger$ PropertyChanged=�54      55      56      �� 59      $��1��6   $��0��6)   .+�5:      �� .+�5;      �� $��	Last Name��6    $��18(�61   $��
20 10 10 0q�6?   #��[ 6S   � 5<      .+�5=      �� $��Center=�6$   ���#575b5e$ False��6T   $��30 10 20 10q�6m   $ 1��6�   $��18(�6�   $��Enter Last Name��6�   #��[ 6  y�6�   �� $	 lName��$
 Text.IsEmpty�# [  6  �� 5>      -   5        $ lName��5>   H   #��[ 6"   $��20 10 20 10q�6W   $��18(�6l   ��6z   �� *User.LastName+$ PropertyChanged=�5?      5@      5A      �� 5D      $��0��6   $��1��6)   $��2��66   .+�5E      �� .+�5F      �� $��Address��6    $��18(�6/   $��
20 10 10 0q�6=   #��[ 6Q   � 5G      .+�5H      �� $��Center=�6$   ���#575b5e$ False��6T   $��30 10 20 10q�6m   $ 1��6�   $��18(�6�   $��Enter Address��6�   #��[ 6  y�6�   �� $
	 addr��$
 Text.IsEmpty�# [  6  �� 5I      -   5        $
 addr��5I   H   #��[ 6"   $��20 10 20 10q�6V   $��18(�6k   ��6y   �� *User.Address+$ PropertyChanged=�5J      5K      5L      �� 5O      $��0��6   $��2��6)   .+�5P      �� .+�5Q      �� $��E-mail��6    $��18(�6.   $��
20 10 10 0q�6<   #��[ 6P   � 5R      .+�5S      �� $��Center=�6$   ���#575b5e$ False��6T   $��30 10 20 10q�6m   $ 1��6�   $��18(�6�   $��Enter E-mail��6�   #��[ 6  y�6�   �� $	 email��$
 Text.IsEmpty�# [  6  �� 5T      -   5        $ email��5T   H   #��[ 6"   $��20 10 20 10q�6W   $��18(�6l   ��6z   �� *
User.Email+$ PropertyChanged=�5U      5V      5W      �� 5Z      $��1��6   $��2��6)   .+�5[      �� .+�5\      �� $��	Telephone��6    $��18(�61   $��
20 10 10 0q�6?   #��[ 6S   � 5]      .+�5^      �� $��Center=�6$   ���#575b5e$ False��6T   $��30 10 20 10q�6m   $ 1��6�   $��18(�6�   $��Enter Telephone��6�   #��[ 6  y�6�   �� $		 tel��$
 Text.IsEmpty�# [  6  �� 5_      -   5        $	 tel��5_   H   #��[ 6"   $��20 10 20 10q�6U   $��18(�6j   ��6x   �� *User.Telephone+$ PropertyChanged=�5`      5a      5b      �� 5e      $��0��6   $��3��6)   .+�5f      �� .+�5g      �� $��Gender��6    $��18(�6.   $��
20 10 10 0q�6<   #��[ 6P   �� 5h      $ 
Horizontal=�6!   .+�5i      	�  	� 	GroupName$ gender��6&   $
��Male��69   $��18(�6H   $��80 10 20 10q�6V   $��Center=�6k    	 radio#��[ 6�    d� 	IsChecked 6�   �� *IsMale+$ PropertyChanged=�6�   	� 5j      $ gender��6&   $��Female��69   $��18(�6J   $��50 10 20 10q�6X   $��Center=�6m   #��[ 6�    6�   �� *
IsFemale+$ PropertyChanged=�6�   5k      5l      5m      �� 5p      $��1��6   $��3��6)   .+�5q      �� .+�5r      �� $��	User type��6    $��18(�61   $��
20 10 10 0q�6?   #��[ 6S   �� 5s      $ 
Horizontal=�6!   .+�5t      	� $ ut��6&   $��Normal��65   $��18(�6F   $��80 10 20 10q�6T   $��Center=�6i   #��[ 6�    6�   �� *IsNormaluser+$ PropertyChanged=�6�   	� 5u      $ ut��6&   $��Admin��65   $��18(�6E   $��50 10 20 10q�6S   $��Center=�6h   #��[ 6�    6�   �� *IsAdminUser+$ PropertyChanged=�6�   5v      5w      5x      �� 5{      $��0��6   $��4��6)   .+�5|      �� .+�5}      �� $��Password��6    $��18(�60   $��
20 10 10 0q�6>   #��[ 6R   � 5~      .+�5      �� $��Center=�6$   ���#575b5e$ False��6T   $��30 10 20 10q�6m   $ 1��6�   $��18(�6�   $��Enter Password��6�   #��[ 6  y�6�   �� $	 pw��$
 Text.IsEmpty�# [  6  �� 5�      -   5        $ pw��5�   H   #��[ 6"   $��20 10 20 10q�6T   $��18(�6i   ��6w   �� *User.Password+$ PropertyChanged=�5�      5�      5�      5�      �� 5�   
   -   5          loginButton#��[ 5�      $��80 20 80 30q�66   $��Save Changes��6K   
������ $��18(�6}   $��SemiBold"�6�   $��3��6�   $��60��6�   $	��150��6�   ��6�   �� *changeUserCommand+6�   5�      5�      