   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  +    %Group_Project_2.Pages.EditStudentPage   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     5local#clr-namespace:Group_Project_2.Pages     <local1)clr-namespace:Group_Project_2.View_Models       N� Title$  EditStudentPage�� � 	Resources    	BoolToVis��%   &	        ��  � DataContext 3   -Group_Project_2.View_Models.EditStudentPageVM  .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $��3* ��� $��* �.+��� $��0��$��40��  
backButton#��[ $
��Left=�$
��15 0q�$	��110������ *goBackCommand+.����  �� Orientation$ 
Horizontal=�.+�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�$��15��$��15��  gridButtonIcon#��[ $��0q�$��0q�$��Center=��� $
��Back��$��22(�$��	 10 0 0 0q�$��SemiBold"��� $��1��$��Center=�$��25(�$��SemiBold"�$��Edit Student��$��0 -20 0 20 q�  	titleText#��[ � $��2��$��	0 -10 0 0q� � ColumnDefinitions �� $��* ��� $��* � �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+��� $��0��$��0��.+��� .+��� $��
First Name��$��18(�$��
20 10 10 0q�  loginTBTitle#��[ � .+��� $��Center=����#575b5e J� IsHitTestVisible$ False��$��30 10 20 10q� K� ZIndex$ 1��$��18(�$��Enter First Name��  textHint#��[ y��� 	 �� ElementName$	 fName��
 �� Path$
 Text.IsEmpty� �� 	Converter# [  �� -    ��Name$ fName��  loginTextBox#��[ $��20 10 20 10q�$��18(����� *Student.FirstName+�� $��1��$��0��.+��� .+��� $��	Last Name��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Last Name��#��[ y��� $	 lName��$
 Text.IsEmpty�# [  �� -   $ lName��#��[ $��20 10 20 10q�$��18(����� *Student.LastName+�� $��0��$��1��$��2��.+��� .+��� $��Address��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Address��#��[ y��� $
	 addr��$
 Text.IsEmpty�# [  �� -   $
 addr��#��[ $��20 10 20 10q�$��18(����� *Student.Address+�� $��0��$��2��.+��� .+��� $��	Telephone��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Telephone��#��[ y��� $		 tel��$
 Text.IsEmpty�# [  �� -   $	 tel��#��[ $��20 10 20 10q�$��18(����� *Student.Telephone+�� $��0��$��3��.+��� .+��� $��Birthday��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$!��Enter Birthday (DD/MM/YYYY)��#��[ y��� $
	 bday��$
 Text.IsEmpty�# [  �� -   $
 bday��#��[ $��20 10 20 10q�$��18(����� *Student.Birthday+�� $��1��$��2��.+��� .+��� $��Gender��$��18(�$��
20 10 10 0q�#��[ �� $ 
Horizontal=�.+�	�  	� 	GroupName$ gender��$
��Male��$��18(�$��80 10 20 10q�$��Center=� 	 radio#��[  d� 	IsChecked �� *IsMale+	� $ gender��$��Female��$��18(�$��50 10 20 10q�$��Center=�#��[  �� *
IsFemale+� $��3�� �� $��* ��� $��* � �� $
��auto ��� $��* �.+��� $��0��$��0��$
��Left=�$��Available Modules��$��18(�$��	20 10 0 0q�#��[ &   System.Windows.Controls.DataGrid  -     Name$ amGrid��  DataGridRowStyle1   RowStyle# �   	 DataGridStyle1#��� 	  
 DataGridCellStyle1   	CellStyle# � 
   DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  $��0��$��1��$��20 10 20 20q�   AutoGenerateColumns$ False������ *	Modules+   Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Select��   
IsReadOnly$
 True��   CanUserResize$ False��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto    CellTemplate �� .R���  ��Name$ cb��-   $��Center=�$��Center=� �� *validateCheck+����  �� UpdateSourceTrigger$ PropertyChanged=�  $ Module Code��$
 True��$ False��$
 auto  �� .R��� $��Center=����� *
ModuleCode+  $ Module Name��$
 True��$ False��$ *  �� .R��� $
��Left=�$��20 0 0 0q�$
��Wrap=����� *
ModuleName+�� $��0��$��1��$
��Left=�$��Selected Modules��$��18(�$��	20 10 0 0q�#��[   -   $ smGrid��# �  #��� 	 # � 
 # �  $��1��$��1��$��20 10 20 20q�$ False������ *
SModules+   $ Select��$
 True��$ False��$
 auto  �� .R��� $	 cb1��-	   $
 TrueY�$��Center=�$��Center=����� $ PropertyChanged=�  $ Module Code��$
 True��$ False��$
 auto  �� .R��� $��Center=����� *
ModuleCode+  $ Module Name��$
 True��$ False��$ *  �� .R��� $
��Left=�$��20 0 0 0q�$
��Wrap=����� *
ModuleName+�� -
     loginButton#��[ $��0 -5 0 5q�$��Save Changes��
������ $	��150��$��60��$��18(�$��SemiBold"�$��4��