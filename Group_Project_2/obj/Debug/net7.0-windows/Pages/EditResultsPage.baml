   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  5      I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  5      +    %Group_Project_2.Pages.EditResultsPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      1local#clr-namespace:Group_Project_2.Pages   5      8local1)clr-namespace:Group_Project_2.View_Models   5        N� Title$  EditResultsPage��5       � DataContext 5      3   -Group_Project_2.View_Models.EditResultsPageVM  5   
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
   $��1��6   $��Center=�6!   $��30(�6>   $��SemiBold"�6L   $�� Edit Results��6b   $��
0 -20 0 10q�6w     	titleText#��[ 6�   �� 5#   
   ���#ffffff$��1q�6'    �� CornerRadius$ 30��6;    �� Padding$ 
10 0 10 20q�6M   $��2��6b   $��60 10 60 20q�6o   ���#ffffff J� Opacity$	 0.5Q�6�   ._�5$      ]� $��False��6   .+�5%      � 	 � ColumnDefinitions	 5&      �� 5'      $
��auto �6+   �� 5(      $
��auto �6+   �� 5)      $��* �6+   .+�5+      �� .+�5,      �� $��Student Name��6$   $��Right=�68   $��0��6T   $��15(�6d   $��
20 20 10 0q�6r     windowTBTitle#��[ 6�   �� 5-      $��Index Number��6$   $��Right=�68   $��1��6T   $��15(�6d   $��
20 20 10 0q�6r   #��[ 6�   5.      �� 50      $��1��6!   .+�51      �� $��:��6$   $
��Left=�6-   $��0��6H   $��15(�6X   $��
10 20 10 0q�6f   #��[ 6z   �� 52      $��:��6$   $
��Left=�6-   $��1��6H   $��15(�6X   $��
10 20 10 0q�6f   #��[ 6z   53      �� 55      $��2��6!   .+�56      �� $
��Left=�6F   $��0��6a   $��15(�6q   $��
10 20 10 0q�6   #��[ 6�   ��6$   �� *Student.FullName+6�   �� 57      $
��Left=�6G   $��1��6b   $��15(�6r   $��
10 20 10 0q�6�   #��[ 6�   ��6$   �� *Student.RegNumber+6�   58      59      5:      5;      � 5=   
   $��3��6   	 5>      �� 5?      $��5* �6#   �� 5@      $��3* �6#   .+�5B      �� ���#ffffff$��1q�6+   $��0��6?   $ 5��6O   $��10q�6`   ._�5E      � $��15q�6    5F      �� 5G      $
��auto �6(   �� 5H      $��* �6(   .+�5K      �� $��18(�6    $��Selected Modules��6.   $��Center=�6F     loginTBTitle#��[ 6c   $��0 -5 0 0q�6�   $��0��6�   &   System.Windows.Controls.DataGrid  5M      -   5        
  Name$
 
allResults��5M   �   $��1��6     DataGridRowStyle1   RowStyle# �  6,     DataGridStyle1#���  6[     DataGridCellStyle1   	CellStyle# �  6�    	 DataGridColumnHeaderStyle1   ColumnHeaderStyle# � 	 6�   $��20q�6
     AutoGenerateColumns$ False��66  ��6  �� *	Modules+   Columns 5N      4  .System.Windows.Controls.DataGridTemplateColumn  5O      ,  &System.Windows.Controls.DataGridColumn   Header$ Select��65      
IsReadOnly$
 True��6E      CanUserResize$ False��6W      Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 6m      CellTemplate 5P   "   �� 5Q   &   .R�5R   *   �� -   5        $��Center=�5R   1   $��Center=�6N    
 gridEditButton#��[
 6�   $��25��6�   ��6�   �� .��5S   .     $
 Plus=�6D   #��[ 6P   $��10��6y   $��10��6�   $��Center=�6�   5T   +   5U   '   5W        5X      $ Module Code��65   $
 True��6J   $ False��6\   $	 150 6r    5Y   "   �� 5Z   &   .R�5[   *   �� $��Center=�6P    �� Padding$ 5q�6n   ��64   �� *
ModuleCode+6n   5\   '   5^        5_      $ Module Name��65   $
 True��6J   $ False��6\   $ * 6r    5`   "   �� 5a   &   .R�5b   *   �� $
��Left=�6P   $
��Wrap=�6k   $ 5q�6   ��64   �� *
ModuleName+6   5c   '   5e      5g      5h      5i      �� 5l      ���#ffffff$��1q�6+   $��1��6?   $��3��6O   $ 5��6\   $��10q�6m   ._�5m      �  5n      �� 5o      $
��auto �6(   �� 5p      $��* �6(   �� 5q      $
��auto �6(   .+�5s      �� $��0��6    $��18(�6-   $��Current Results��6;   $��Center=�6R   $	��Top=�6o   #��[ 6�   $��0 10 0 0q�6�     5u      -   5        $
 cResults��5u   �   $��1��6   # �  6,   #���  6[   # �  6�   # � 	 6�   $��20q�6	  $ False��65  ��6  �� *	Results+ 5v        5w      $ Select��65   $
 True��6E   $ False��6W   $ 80 6m    5x   "   �� 5y   &   .R�5z   *   �� -   5        $��Center=�5z   1   $��Center=�6N   #��[
 6�   $��25��6�   ��6q   �� .��5{   .     $ Minus=�6D   #��[ 6Q   $��10��6z   $��10��6�   $��Center=�6�   5|   +   5}   '   5        5�      $ Module Code��65   $
 True��6J   $ False��6\   $ * 6r    5�   "   �� 5�   &   .R�5�   *   �� $��Center=�6W   $ 5q�6u   ��64   �� *Module.ModuleCode+6u   5�   '   5�        5�      $ Marks��65   $ False��6D   $ False��6W   $	 120 6m   -   5        	marks�� 5�   "   �� 5�   &   .R�5�   *   �� -   5          resultsTextBox#��[ 5�   n   $
��20 0q�6�   $��Center=�6�   ��62   �� *Marks+ �� UpdateSourceTrigger$ PropertyChanged=�6�   5�   '   5�      5�      �� 5�      -   5        $��2��5�      $��0 5 0 5q�6*   $��Edit Results��6;   
������ $
��auto��6m   $��15q�6z   $��50��6�   $��16(�6�   $��SemiBold"�6�   $��Center=�6�     loginButton#��[ 6�   5�      5�      5�      5�      5�      