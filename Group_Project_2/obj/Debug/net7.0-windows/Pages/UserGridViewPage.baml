   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  5      ,    &Group_Project_2.Pages.UserGridViewPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      1local#clr-namespace:Group_Project_2.Pages   5      -   5          N� Title$  UserGridViewPage��5
      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��40��6      
backButton#��[  6*   $
��Left=�6N   $
��15 0q�6i   $	��110��6w   ��6�   �� *goBackCommand+.��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�6(   $��15��69   $��15��6E     gridButtonIcon#��[ 6P   $��0q�6x   $��0q�6�   $��Center=�6�   �� 5      $
��Back��6   $��22(�6(   $��	 10 0 0 0q�66   $��SemiBold"�6I   5      5      �� 5   
   $��1��6   $��Center=�6!   $��30(�6>   $��SemiBold"�6L   $��
Edit Users��6b   $��15q�6t     	titleText#��[ 6�   &   System.Windows.Controls.DataGrid  5   
     DataGridRowStyle1   RowStyle# �  6     DataGridStyle1#���  6B     DataGridCellStyle1   	CellStyle# �  6k     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6�   $��2��6�   $��20q�6�      AutoGenerateColumns$ False��6  ��6�   �� *NormalUsers+   Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 	User Name��6)   
   
IsReadOnly$

 True��6<      CanUserResize$ False��6N      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 6d      CellTemplate 5       �� 5!      .R�5"      �� $��Center=�6B   ��6(   �� *
UserName+6B   5#      5%        5'      $	 	Full Name��6)   $

 True��6<   $ False��6N   $ * 6d    5(      �� 5)      .R�5*      �� $
��Left=�6B   $��20 0 0 0q�6]   ��6(   �� *
FullName+6]   5+      5-        5/      $	 Address��6)   $

 True��6:   $ False��6L   $ * 6b    50      �� 51      .R�52      �� $
��Left=�6A   $��20 0 0 0q�6\   $
��Wrap=�6n   ��6(   �� *	Address+6n   53      55        57      $	 Gender��6)   $

 True��69   $ False��6K   $
 auto 6a    58      �� 59      .R�5:      �� $��Center=�6@   ��6(   �� *Gender+6@   5;      5=        5A      $	 
Operations��6)   $

 True��6=   $
 auto 6O    5B      �� 5C      .R�5D      �� $ 
Horizontal=�6)   .+�5E   "   �� -   5          gridEditButton#��[ 5E   )   $��5 0 5 0q�6�   ��6f   �� .��5F   &     $ PencilOutline=�6<   #��[ 6Q   5G   #   �� 5H   "   -   5        #��[ 5H   )   $��5 0 0 0q�6Q   ��6y   �� .��5I   &     $ DeleteOutline=�6<   #��[ 6Q   5J   #   5K      5L      5N      5Q      5R      5S      