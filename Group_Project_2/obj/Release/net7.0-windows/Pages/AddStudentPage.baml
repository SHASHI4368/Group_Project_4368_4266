   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  *    $Group_Project_2.Pages.AddStudentPage   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   <d2http://schemas.microsoft.com/expression/blend/2008   1local#clr-namespace:Group_Project_2.Pages   8local1)clr-namespace:Group_Project_2.View_Models     N� Title$  AddStudentPage�� � DataContext 2   ,Group_Project_2.View_Models.AddStudentPageVM   � 	Resources    	BoolToVis��%   &	        �� .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� $��0��$��40��  
backButton#��[ $
��Left=�$
��15 0q�$	��110������ *goBackCommand+.����  �� Orientation$ 
Horizontal=�.+�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�$��15��$��15��  gridButtonIcon#��[ $��0q�$��0q�$��Center=��� $
��Back��$��22(�$��	 10 0 0 0q�$��SemiBold"��� $��1��$��Center=�$��30(�$��SemiBold"�$��Add Student��$��
0 -30 0 10q�  	titleText#��[ � $��2�� � ColumnDefinitions �� $��* ��� $��* � �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+��� $��0��$��0��.+��� .+��� $��
First Name��$��18(�$��
20 10 10 0q�  loginTBTitle#��[ � .+��� $��Center=� J� IsHitTestVisible$ False��$��30 10 20 10q� K� ZIndex$ 1��$��18(�$��Enter First Name��  textHint#��[ ���	#FFD5EDE7y��� 	 �� ElementName$	 fName��
 �� Path$
 Text.IsEmpty� �� 	Converter# [  �� -    ��Name$ fName��  loginTextBox#��[ $��20 10 20 10q�$��18(����� *Fn+�� $��1��$��0��.+��� .+��� $��	Last Name��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=�$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Last Name��#��[ y��� $	 lName��$
 Text.IsEmpty�# [  �� -   $ lName��#��[ $��20 10 20 10q�$��18(����� *Ln+�� $��0��$��1��$��2��.+��� .+��� $��Address��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=�$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Address��#��[ y��� $
	 addr��$
 Text.IsEmpty�# [  �� -   $
 addr��#��[ $��20 10 20 10q�$��18(����� *Addr+�� $��0��$��2��.+��� .+��� $��	Telephone��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=�$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Telephone��#��[ y��� $		 tel��$
 Text.IsEmpty�# [  �� -   $	 tel��#��[ $��20 10 20 10q�$��18(����� *Tel+�� $��0��$��3��.+��� .+��� $��Birthday��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=�$ False��$��30 10 20 10q�$ 1��$��18(�$!��Enter Birthday (DD/MM/YYYY)��#��[ y��� $
	 bday��$
 Text.IsEmpty�# [  �� -   $
 bday��#��[ $��20 10 20 10q�$��18(����� *BDay+�� $��1��$��2��.+��� .+��� $��Gender��$��18(�$��
20 10 10 0q�#��[ �� $ 
Horizontal=�.+�	�  	� 	GroupName$ gender��$
��Male��$��18(�$��80 10 20 10q�$��Center=� 	 radio#��[  d� 	IsChecked �� *IsMale+	� $ gender��$��Female��$��18(�$��50 10 20 10q�$��Center=�#��[  �� *
IsFemale+� $��3�� �� $��2* ��� $��* � �� $
��auto ��� $��* �.+��� $��0��$��0��$
��Left=�$��Available Modules��$��18(�$��	20 10 0 0q�#��[ &   System.Windows.Controls.DataGrid    DataGridRowStyle1   RowStyle# �   	 DataGridStyle1#��� 	  
 DataGridCellStyle1   	CellStyle# � 
   DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  $��0��$��1��$��20 10 20 20q�   AutoGenerateColumns$ False������ *M+   Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Select��   CellTemplate �� .R���  ��Name$ cb��-   $��Center=�$��Center=�����   $ Module Code��   
IsReadOnly$
 True��   CanUserResize$ False��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto  �� .R��� $��Center=����� *
ModuleCode+  $ Module Name��$
 True��$ False��$
 auto  �� .R��� $
��Left=�$��20 0 0 0q����� *
ModuleName+��   loginButton#��[ $��70��$��Add User��
������ $��18(�$��SemiBold"�$��3��$��1������ *addStudentCommand+