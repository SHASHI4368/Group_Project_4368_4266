   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  2    ,Group_Project_2.Pages.AddOrRemoveModulesPage   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   <d2http://schemas.microsoft.com/expression/blend/2008   1local#clr-namespace:Group_Project_2.Pages   8local1)clr-namespace:Group_Project_2.View_Models   -     N� Title$  AddOrRemoveModulesPage�� � DataContext :   4Group_Project_2.View_Models.AddOrRemoveModulesPageVM  .��� .+��  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� $��0��$��40��   
backButton#��[  $
��Left=�$
��15 0q�$	��110������ *goBackCommand+.����  �� Orientation$ 
Horizontal=�.+�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�$��15��$��15��  gridButtonIcon#��[ $��0q�$��0q�$��Center=��� $
��Back��$��22(�$��	 10 0 0 0q�$��SemiBold"��� $��1��$��Add/Remove Modules��$��30(�$��Center=�$��	0 10 0 10q�  	titleText#��[ �� -    ��Name$ b1��  loginButton#��[ $��Add New Module��
������ $��18(�$��Right=�$��
0 20 40 20q�$��SemiBold"�$��2��$��10q�$	��180������ *openAddModulesCommand+&   System.Windows.Controls.DataGrid    DataGridRowStyle1   RowStyle# �    DataGridStyle1#���    DataGridCellStyle1   	CellStyle# �    DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  $��3��$��40q�	   AutoGenerateColumns$	 False������ *	Modules+
   Columns
 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Module Code��   
IsReadOnly$
 True��   CanUserResize$ False��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 100    CellTemplate �� .R��� $��Center=�$
��Wrap=����� *
ModuleCode+  $ Module Name��$
 True��$ False��$ *  �� .R��� $
��Left=�$��20 0 0 0q����� *
ModuleName+  $ Number of Credits��$
 True��$ False��$
 auto  �� .R��� $��Center=����� *	Credits+  $ 
Operations��$
 True��$
 auto  �� .R��� $ 
Horizontal=�$��Center=�.+��� -     gridEditButton#��[ $��0 0 5 0q����� .��  $ PencilOutline=�#��[ �� -   #��[ $��5 0 0 0q����� .��  $ DeleteOutline=�#��[ 