   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  5      I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  69   .    (Group_Project_2.Pages.StudentDetailsPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      1local#clr-namespace:Group_Project_2.Pages   5      8local1)clr-namespace:Group_Project_2.View_Models   69   -   5          N� Title$  StudentDetailsPage��5       � DataContext 5      6   0Group_Project_2.View_Models.StudentDetailsPageVM  5   
    � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��40��6     
backButton#��[ 6*   $
��Left=�6N   $
��15 0q�6i   $	��110��6w   ��6�   �� *goBackCommand+.��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�6(   $��15��69   $��15��6E     gridButtonIcon#��[ 6P   $��0q�6x   $��0q�6�   $��Center=�6�   �� 5      $
��Back��6   $��22(�6(   $��	 10 0 0 0q�66   $��SemiBold"�6I   5      5      �� 5!   
   $��1��6   $��Center=�6!   $��30(�6>   $��SemiBold"�6L   $��Student Details��6b   $��
0 -10 0 20q�6y     	titleText#��[ 6�   �� 5$   
   $��0��6   $��2��6%   $��Right=�62   $ 
Horizontal=�6N   .+�5%      �� $��Registration Number : ��6   $��18(�66   $��	10 15 0 0q�6D     loginTBTitle#��[ 6W   � 5&      .+�5'      �� $��Center=�6     J� IsHitTestVisible$ False��6<   $��30 10 20 10q�6U    K� ZIndex$ 1��6j   $��18(�6{   $��Enter Registration Number��6�     textHint#��[ 6  ���	#FFD5EDE7y�6�   ��  �� ElementName$ regNo��	 �� Path$	 Text.IsEmpty�
 �� 	Converter#
 [  6.  �� 5(      -   5         ��Name$ regNo��5(   D     loginTextBox#��[ 6   $��20 10 20 10q�6S   $��18(�6h   $	��300��6�   ��6v   �� *Key+6�   5)      5*      &   System.Windows.Controls.DataGrid  5,   
   -   5          Name$ 
myDataGrid��5,   �     DataGridRowStyle1   RowStyle# �  6     DataGridStyle1#���  6B    	 DataGridCellStyle1   	CellStyle# � 	 6k    
 DataGridColumnHeaderStyle1   ColumnHeaderStyle# � 
 6�   $��3��6�   $��20q�6�      AutoGenerateColumns$ False��6,  ��6  �� *
Students+   Columns 5-      4  .System.Windows.Controls.DataGridTemplateColumn  50      ,  &System.Windows.Controls.DataGridColumn   Header$ Reg. Number��6)      
IsReadOnly$
 True��6>      CanUserResize$ False��6P      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6f      CellTemplate 51      �� 52      .R�53      �� $��Center=�6C   ��6(   �� *	RegNumber+6C   54      56        59      $ 	Full Name��6)   $
 True��6<   $ False��6N   $ * 6d    5:      �� 5;      .R�5<      �� $
��Left=�6B   $��10 0 0 0q�6]   $
��Wrap=�6o   ��6(   �� *
FullName+6o   5=      5?        5B      $ Address��6)   $
 True��6:   $ False��6L   $ * 6b    5C      �� 5D      .R�5E      �� $
��Left=�6A   $��10 0 0 0q�6\   $
��Wrap=�6n   ��6(   �� *	Address+6n   5F      5H        5K      $ Birthday��6)   $
 True��6;   $ False��6M   $	 120 6c    5L      �� 5M      .R�5N      �� $��Center=�6B   ��6(   �� *
Birthday+6B   5O      5Q        5S      $ 	Telephone��6)   $
 True��6<   $ False��6N   $	 140 6d    5T      �� 5U      .R�5V      �� $��Center=�6C   ��6(   �� *	Telephone+6C   5W      5Y        5\      $ Gender��6)   $
 True��69   $ False��6K   $ 80 6a    5]      �� 5^      .R�5_      �� $��Center=�6@    �� Padding$
 10 0q�6]   ��6(   �� *Gender+6]   5`      5b        5d      $ 
Operations��6)   $
 True��6=   $ False��6O   $	 100 6e    5e      �� 5f      .R�5g      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5h   "   �� -   5          gridEditButton#��[ 5h   )   $��5 0 5 0q�6Q   ��6w   �� .��5i   &     $ PencilOutline=�6<   #��[ 6Q   5j   #   �� 5k   "   -   5        #��[ 5k   )   $��5 0 0 0q�6Q   ��6y   �� .��5l   &     $ DeleteOutline=�6<   #��[ 6Q   5m   #   5n      5o      5q      5t      5u      5v      