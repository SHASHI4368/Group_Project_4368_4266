   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  .    (Group_Project_2.Pages.StudentDetailsPage   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   <d2http://schemas.microsoft.com/expression/blend/2008   1local#clr-namespace:Group_Project_2.Pages   8local1)clr-namespace:Group_Project_2.View_Models   -     N� Title$  StudentDetailsPage�� � DataContext 6   0Group_Project_2.View_Models.StudentDetailsPageVM   � 	Resources    	BoolToVis��%   &	        �� .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� $��0��$��40��  
backButton#��[ $
��Left=�$
��15 0q�$	��110������ *goBackCommand+.����  �� Orientation$ 
Horizontal=�.+�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�$��15��$��15��  gridButtonIcon#��[ $��0q�$��0q�$��Center=��� $
��Back��$��22(�$��	 10 0 0 0q�$��SemiBold"��� $��1��$��Center=�$��30(�$��SemiBold"�$��Student Details��$��
0 -10 0 20q�  	titleText#��[ �� $��0��$��2��$��Right=�.+��� .+��� $��Registration Number��$��18(�$��
10 10 10 0q�  loginTBTitle#��[ � .+��� $��Center=� J� IsHitTestVisible$ False��$��30 10 20 10q� K� ZIndex$ 1��$��18(�$��Enter Registration Number��  textHint#��[ ���	#FFD5EDE7y���  �� ElementName$ regNo��	 �� Path$	 Text.IsEmpty�
 �� 	Converter#
 [  �� -    ��Name$ regNo��  loginTextBox#��[ $��20 10 20 10q�$��18(�$	��300������ *Key+&   System.Windows.Controls.DataGrid  -     Name$ 
myDataGrid��  DataGridRowStyle1   RowStyle# �    DataGridStyle1#���   	 DataGridCellStyle1   	CellStyle# � 	  
 DataGridColumnHeaderStyle1   ColumnHeaderStyle# � 
 $��3��$��20q�   AutoGenerateColumns$ False������ *
Students+   Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Reg. Number��   
IsReadOnly$
 True��   CanUserResize$ False��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 100    CellTemplate �� .R��� $��Center=����� *	RegNumber+  $ 	Full Name��$
 True��$ False��$ *  �� .R��� $
��Left=�$��20 0 0 0q����� *
FullName+  $ Address��$
 True��$ False��$ *  �� .R��� $
��Left=�$��20 0 0 0q�$
��Wrap=����� *	Address+  $ Birthday��$
 True��$ False��$	 120  �� .R��� $��Center=����� *
Birthday+  $ 	Telephone��$
 True��$ False��$	 140  �� .R��� $��Center=����� *	Telephone+  $ Gender��$
 True��$ False��$ 80  �� .R��� $��Center=� �� Padding$
 10 0q����� *Gender+  $ 
Operations��$
 True��$ False��$	 100  �� .R��� $ 
Horizontal=�$��Center=�.+��� -     gridEditButton#��[ $��5 0 5 0q����� .��  $ PencilOutline=�#��[ �� -   #��[ $��5 0 0 0q����� .��  $ DeleteOutline=�#��[ 