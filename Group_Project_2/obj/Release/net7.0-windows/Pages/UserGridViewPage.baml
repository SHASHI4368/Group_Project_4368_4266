   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  ,    &Group_Project_2.Pages.UserGridViewPage   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   <d2http://schemas.microsoft.com/expression/blend/2008   1local#clr-namespace:Group_Project_2.Pages   -     N� Title$  UserGridViewPage��.���  � RowDefinitions �� $
��auto ��� $
��auto ��� $��* �.+��� $��0��$��40��   
backButton#��[  $
��Left=�$
��15 0q�$	��110������ *goBackCommand+.����  �� Orientation$ 
Horizontal=�.+�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�$��15��$��15��  gridButtonIcon#��[ $��0q�$��0q�$��Center=��� $
��Back��$��22(�$��	 10 0 0 0q�$��SemiBold"��� $��1��$��Center=�$��30(�$��SemiBold"�$��
Edit Users��$��15q�  	titleText#��[ &   System.Windows.Controls.DataGrid    DataGridRowStyle1   RowStyle# �    DataGridStyle1#���    DataGridCellStyle1   	CellStyle# �    DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  $��2��$��20q�   AutoGenerateColumns$ False������ *NormalUsers+   Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn	   Header$	 	User Name��
   
IsReadOnly$

 True��   CanUserResize$ False��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto    CellTemplate �� .R��� $��Center=����� *
UserName+  $	 	Full Name��$

 True��$ False��$ *  �� .R��� $
��Left=�$��20 0 0 0q����� *
FullName+  $	 Address��$

 True��$ False��$ *  �� .R��� $
��Left=�$��20 0 0 0q�$
��Wrap=����� *	Address+  $	 Gender��$

 True��$ False��$
 auto  �� .R��� $��Center=����� *Gender+  $	 
Operations��$

 True��$
 auto  �� .R��� $ 
Horizontal=�.+��� -     gridEditButton#��[ $��5 0 5 0q����� .��  $ PencilOutline=�#��[ �� -   #��[ $��5 0 0 0q����� .��  $ DeleteOutline=�#��[ 