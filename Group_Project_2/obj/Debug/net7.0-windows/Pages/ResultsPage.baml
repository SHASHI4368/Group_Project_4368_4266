   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  5      I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  5
      '    !Group_Project_2.Pages.ResultsPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:Group_Project_2.Pages     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5	      8local1)clr-namespace:Group_Project_2.View_Models   5
      -   5          N� Title$  ResultsPage��5       � DataContext 5      /   )Group_Project_2.View_Models.ResultsPageVM  5   
    � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��40��6     
backButton#��[ 6*   $
��Left=�6N   $
��15 0q�6i   $	��110��6w   ��6�   �� *goBackCommand+.��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�6(   $��15��69   $��15��6E     gridButtonIcon#��[ 6P   $��0q�6x   $��0q�6�   $��Center=�6�   �� 5      $
��Back��6   $��22(�6(   $��	 10 0 0 0q�66   $��SemiBold"�6I   5      5       �� 5"   
   $��1��6   $��Center=�6!   $��30(�6>   $��SemiBold"�6L   $��Results��6b   $��
0 -15 0 10q�6q     	titleText#��[ 6�   �� 5%   
   $��1��6   $��2��6%   $��Right=�62   $ 
Horizontal=�6N   .+�5&      �� $��Registration Number : ��6   $��18(�66   $��	10 8 0 10q�6D     loginTBTitle#��[ 6W   $��Center=�6}   � 5'      $��Center=�6   .+�5(      �� $��Center=�6    J� IsHitTestVisible$ False��67   $��30 10 20 10q�6P    K� ZIndex$ 1��6e   $��18(�6v   $��Enter Registration Number��6�     textHint#��[ 6  y�6�   ��  �� ElementName$ regNo��	 �� Path$	 Text.IsEmpty�
 �� 	Converter#
 [  6  �� 5)      -   5         ��Name$ regNo��5)   @     loginTextBox#��[ 6   $��20 10 20 10q�6O   $��18(�6d   $	��300��6�   ��6r   �� *Key+6�   5*      5+      � 5,   
   $��3��6    � ColumnDefinitions 5-      �� 5.      $��4* �6#   �� 5/      $��5* �6#   .+�51      �� ���#ffffff$��1q�6+   $��0��6?    �� CornerRadius$ 5��6O   $��10q�6`   ._�52      �� .+�53      �� $��18(�6    $��All Results��6.   $��Center=�6A   #��[ 6^   $��0 10 0 0q�6�   &   System.Windows.Controls.DataGrid  56      -   5          Name$ 
allResults��56   �     DataGridRowStyle1   RowStyle# �  6     DataGridStyle1#���  6N    	 DataGridCellStyle1   	CellStyle# � 	 6w    
 DataGridColumnHeaderStyle1   ColumnHeaderStyle# � 
 6�   $��20q�6�      AutoGenerateColumns$ False��6*  ��6	  �� *
Students+   Columns 57      4  .System.Windows.Controls.DataGridTemplateColumn  59      ,  &System.Windows.Controls.DataGridColumn   Header$ Select��65      
IsReadOnly$
 True��6E      CanUserResize$ False��6W      Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 6m      CellTemplate 5:   "   �� 5;   &   .R�5<   *   �� -   5        $��Center=�5<   1   $��Center=�6N   $��Center=�6�     gridEditButton#��[ 6�   ��6�   ��  �� UpdateSourceTrigger$ PropertyChanged=�.��5=   .     $ 	OpenInApp=�6D   #��[ 6U   5>   +   5?   '   5A        5C      $ Reg. Number��65   $
 True��6J   $ False��6\   $ * 6r    5D   "   �� 5E   &   .R�5F   *   �� $��Center=�6O    �� Padding$ 5q�6m   ��64   �� *	RegNumber+6m   5G   '   5I        5K      $	 GPA��65   $
 True��6B   $ False��6T   $ * 6j    5L   "   �� 5M   &   .R�5N   *   �� $��Center=�6`   $ 5q�6~   ��64   �� *GPA+ �� StringFormat$ {0:F4}��6~   5O   '   5Q      5T      5U      5V      �� 5Y      ���#ffffff$��1q�6+   $��1��6?   $��3��6O   $ 5��6\   $��10q�6m    �� Padding$ 5q�6y   ._�5Z      �  5[      �� 5\      $
��auto �6(   �� 5]      $
��auto �6(   �� 5^      $
��auto �6(   �� 5_      $��* �6(   .+�5b      �� $��0��6    $��18(�6-   $��Detailed Results��6;   $��Center=�6S   #��[ 6p   $��0 5 0 0q�6�   �� 5d      $��1��6   ���#ffffff$��1q�6@   $ 30��6T   $ 
10 0 10 20q�6f   $��60 10 60 20q�6{   ���#ffffff J� Opacity$	 0.5Q�6�   ._�5e      �  5f      �� 5g   "   $
��auto �63   �� 5h   "   $
��auto �63   �� 5i   "   $��* �63    5k      �� 5l   "   $��* �60   �� 5m   "   $
��auto �60   .+�5o      �� $��0��6(   $��Student Name��65   $��Right=�6I   $��0��6e   $��15(�6u   $��
20 20 10 0q�6�     windowTBTitle#��[ 6�   �� 5p      $��1��6(   $��Index Number��65   $��Right=�6I   $��0��6e   $��15(�6u   $��
20 20 10 0q�6�   #��[ 6�   �� 5q      $��0��6(   $��:��65   $
��Left=�6>   $��1��6Y   $��15(�6i   $��
10 20 10 0q�6w   #��[ 6�   �� 5r      $��1��6(   $��:��65   $
��Left=�6>   $��1��6Y   $��15(�6i   $��
10 20 10 0q�6w   #��[ 6�   �� 5s      -   5         ��Name$
 mTB1��5s   5   $��0��6(   $
��Left=�6C   $��2��6^   $��15(�6n   $��
10 20 10 0q�6|   #��[ 6�   $
��Wrap=�6�   �� 5t      -   5        $
 mTB2��5t   5   $��1��6(   $
��Left=�6C   $��2��6^   $��15(�6n   $��
10 20 10 0q�6|   #��[ 6�   5u      5v      �� 5x      -   5        $��2��5x        loginButton#��[ 6*   $��
0 -10 10 0q�6O   $��Edit Results��6c   
������ $
��auto��6�   $��5q�6�   $��50��6�   $��16(�6�   $��SemiBold"�6�   $��Right=�6�   6�     5z      -   5        $ results��5z   �   $��3��6   # �  6,   #���  6[   # � 	 6�   # � 
 6�   $��15q�6  $ False��6;  ��6  �� *Student.Results+ 5{        5|      $ Module Code��65   $
 True��6J   $ False��6\   $ * 6r    5}   "   �� 5~   &   .R�5   *   �� $��Center=�6�   $ 5q�6�   ��64   �� *Module.ModuleCode+$ PropertyChanged=� �� Mode$ TwoWay=�6�   5�   '   5�        5�      $ Grade��65   $
 True��6D   $ False��6V   $ * 6l   -	   5        	mCode�� 5�   "   �� 5�   &   .R�5�   *   �� $	 cTB��6�   $��Center=�6p   $ 5q�6�   ��64   �� *Grade+$ PropertyChanged=�6�   5�   '   5�      5�      5�      5�      5�      5�      5�      