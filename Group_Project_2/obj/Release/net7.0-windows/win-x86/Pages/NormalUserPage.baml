   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  *    $Group_Project_2.Pages.NormalUserPage   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   <d2http://schemas.microsoft.com/expression/blend/2008   1local#clr-namespace:Group_Project_2.Pages   =view_models)clr-namespace:Group_Project_2.View_Models     N� Title$  NormalUserPage�� � DataContext 2   ,Group_Project_2.View_Models.NormalUserPageVM  .���  � ColumnDefinitions �� $��* ��� $��* � � RowDefinitions �� $
��Auto ��� $
��Auto ��� $��* �.+��� $��0��$��2��$��1��$��Center=�$��35(�$��SemiBold"�$��Normal User��   	titleText#��[  $��0 0 0 0q��� ���#ffffff$��1q� �� CornerRadius$ 30��$��2�� �� Padding$
 0 50q�$��0 0 0 0q����#ffffff J� Opacity$	 0.5Q�$	��500��$	��400��$��Center=�$��Right=�._��  �� $
��auto ��� $��* ��� $
��auto �.+��� $��Personal Details��$��25(�$��SemiBold"�$��Center=�$��0 0 0 10q�$��0��#��[  ���#000000� $��1�� �� $
��auto ��� $
��auto ��� $��* �.+��� .+��� $
��Name��$��Right=�$��0��$��
20 20 10 0q�  windowTBTitle#��[ �� $��Address��$��Right=�$��1��$��
20 20 10 0q�#��[ �� $��	Telephone��$��Right=�$��0��$��
20 20 10 0q�#��[ �� $��E-mail��$��Right=�$��0��$��
20 20 10 0q�#��[ �� $��1��.+��� $��:��$
��Left=�$��0��$��
10 20 10 0q�#��[ �� $��:��$
��Left=�$��1��$��
10 20 10 0q�#��[ �� $��:��$
��Left=�$��0��$��
10 20 10 0q�#��[ �� $��:��$
��Left=�$��0��$��
10 20 10 0q�#��[ �� $��2��.+��� $
��Left=�$��0��$��
10 20 10 0q�#��[ $��20(�$
��Wrap=����� *User.FullName+ �� UpdateSourceTrigger$ Default=��� $
��Left=�$��1��$��
10 20 10 0q�#��[ $
��Wrap=�$��20(����� *User.Address+ �� Mode$ TwoWay=�$ PropertyChanged=��� $
��Left=�$��0��$��
10 20 10 0q�#��[ $��20(����� *User.Telephone+$ PropertyChanged=�$ TwoWay=��� $
��Left=�$��0��$��
10 20 10 0q�#��[ $��20(�$
��Wrap=����� *
User.Email+$ PropertyChanged=�$ TwoWay=��� $��Right=�
������ $��2��  	TopButton#��[ $��10 10 20 -20q����� *changeUserNowCommand+.��/  )MahApps.Metro.IconPacks.MaterialExtension  	   Kind$	 PencilOutline=�3  -MahApps.Metro.IconPacks.BasePackIconExtension
   Width$
 15Q�   Height$ 15Q��� $��1��$��2��$��Center=�$
��Left=�$��	140 0 0 0q�.+���   loginButton#��[ $��Center=�$��0 10 0 0q�$��Add Student��
������ $	��230��$��22(�$��SemiBold"�$��70������ *addStudentCommand+�� #��[ $��Center=�$��0 30 0 0q�$��Edit Student��
������ $	��230��$��22(�$��SemiBold"�$��70������ *editStudentCommand+�� #��[ $��Center=�$��0 30 0 0q�$��Results��
������ $	��230��$��22(�$��70��$��SemiBold"����� *addResultsCommand+�� #��[ $��Center=�$��0 30 0 0q�
������ $	��230��$��22(�$��70��$��SemiBold"����� *logOutCommand+.����  �� Orientation$ 
Horizontal=�.+�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Logout=�$��20��$��20��  gridButtonIcon#��[ �� $��Log Out��$��22(�$��	 10 0 0 0q�$��SemiBold"�