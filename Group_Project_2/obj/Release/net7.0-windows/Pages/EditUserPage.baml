   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  (    "Group_Project_2.Pages.EditUserPage   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     5local#clr-namespace:Group_Project_2.Pages     <local1)clr-namespace:Group_Project_2.View_Models     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks     N� Title$  EditUserPage�� � 	Resources    	BoolToVis��%   &	        ��  � DataContext 0   *Group_Project_2.View_Models.EditUserPageVM  .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� $��0��$��40��  
backButton#��[ $
��Left=�$
��15 0q�$	��110������ *goBackCommand+.����  �� Orientation$ 
Horizontal=�.+�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�$��15��$��15��  gridButtonIcon#��[ $��0q�$��0q�$��Center=��� $
��Back��$��22(�$��	 10 0 0 0q�$��SemiBold"��� $��1��$��Center=�$��30(�$��SemiBold"�$��	Edit User��$��0 0 0 10q�  	titleText#��[ � $��2�� � ColumnDefinitions �� $��* ��� $��* � �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+��� $��0��$��0��.+��� .+��� $��
First Name��$��18(�$��
20 10 10 0q�  loginTBTitle#��[ � .+��� $��Center=����#575b5e J� IsHitTestVisible$ False��$��30 10 20 10q� K� ZIndex$ 1��$��18(�$��Enter First Name��  textHint#��[ y��� 	 �� ElementName$	 fName��
 �� Path$
 Text.IsEmpty� �� 	Converter# [  �� -    ��Name$ fName��  loginTextBox#��[ $��20 10 20 10q�$��18(����� *User.FirstName+ �� UpdateSourceTrigger$ PropertyChanged=��� $��1��$��0��.+��� .+��� $��	Last Name��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Last Name��#��[ y��� $	 lName��$
 Text.IsEmpty�# [  �� -   $ lName��#��[ $��20 10 20 10q�$��18(����� *User.LastName+$ PropertyChanged=��� $��0��$��1��$��2��.+��� .+��� $��Address��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Address��#��[ y��� $
	 addr��$
 Text.IsEmpty�# [  �� -   $
 addr��#��[ $��20 10 20 10q�$��18(����� *User.Address+$ PropertyChanged=��� $��0��$��2��.+��� .+��� $��E-mail��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter E-mail��#��[ y��� $	 email��$
 Text.IsEmpty�# [  �� -   $ email��#��[ $��20 10 20 10q�$��18(����� *
User.Email+$ PropertyChanged=��� $��1��$��2��.+��� .+��� $��	Telephone��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Telephone��#��[ y��� $		 tel��$
 Text.IsEmpty�# [  �� -   $	 tel��#��[ $��20 10 20 10q�$��18(����� *User.Telephone+$ PropertyChanged=��� $��0��$��3��.+��� .+��� $��Gender��$��18(�$��
20 10 10 0q�#��[ �� $ 
Horizontal=�.+�	�  	� 	GroupName$ gender��$
��Male��$��18(�$��80 10 20 10q�$��Center=� 	 radio#��[  d� 	IsChecked �� *IsMale+$ PropertyChanged=�	� $ gender��$��Female��$��18(�$��50 10 20 10q�$��Center=�#��[  �� *
IsFemale+$ PropertyChanged=��� $��0��$��4��.+��� .+��� $��Password��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Password��#��[ y��� $	 pw��$
 Text.IsEmpty�# [  �� -   $ pw��#��[ $��20 10 20 10q�$��18(����� *User.Password+$ PropertyChanged=���   loginButton#��[ $��80 20 80 30q�$��Save Changes��
������ $��18(�$��SemiBold"�$��3��$��60��$	��150������ *changeUserCommand+