   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  '    !Group_Project_2.Pages.ResultsPage   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     5local#clr-namespace:Group_Project_2.Pages     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   8local1)clr-namespace:Group_Project_2.View_Models   -     N� Title$  ResultsPage�� � DataContext /   )Group_Project_2.View_Models.ResultsPageVM   � 	Resources    	BoolToVis��%   &	        �� .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� $��0��$��40��  
backButton#��[ $
��Left=�$
��15 0q�$	��110������ *goBackCommand+.����  �� Orientation$ 
Horizontal=�.+�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�$��15��$��15��  gridButtonIcon#��[ $��0q�$��0q�$��Center=��� $
��Back��$��22(�$��	 10 0 0 0q�$��SemiBold"��� $��1��$��Center=�$��30(�$��SemiBold"�$��Results��$��
0 -15 0 10q�  	titleText#��[ �� $��1��$��2��$��Right=�.+��� .+��� $��Registration Number��$��18(�$��
10 10 10 0q�  loginTBTitle#��[ � .+��� $��Center=����#575b5e J� IsHitTestVisible$ False��$��30 10 20 10q� K� ZIndex$ 1��$��18(�$��Enter Registration Number��  textHint#��[ y���  �� ElementName$ regNo��	 �� Path$	 Text.IsEmpty�
 �� 	Converter#
 [  �� -    ��Name$ regNo��  loginTextBox#��[ $��20 10 20 10q�$��18(�$	��300������ *Key+� $��3�� � ColumnDefinitions �� $��4* ��� $��5* �.+��� ���#ffffff$��1q�$��0�� �� CornerRadius$ 5��$��10q�._��� .+��� $��18(�$��All Results��$��Center=�#��[ $��0 10 0 0q�&   System.Windows.Controls.DataGrid  -     Name$ 
allResults��  DataGridRowStyle1   RowStyle# �    DataGridStyle1#���   	 DataGridCellStyle1   	CellStyle# � 	  
 DataGridColumnHeaderStyle1   ColumnHeaderStyle# � 
 $��20q�   AutoGenerateColumns$ False������ *
Students+   Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Select��   
IsReadOnly$
 True��   CanUserResize$ False��   Width5  /System.Windows.Controls.DataGridLengthConverter$ 80    CellTemplate �� .R��� -   $��Center=�$��Center=�$��Center=�  gridEditButton#��[ ����  �� UpdateSourceTrigger$ PropertyChanged=�.��  $ 	OpenInApp=�#��[   $ Reg. Number��$
 True��$ False��$ *  �� .R��� $��Center=� �� Padding$ 5q����� *	RegNumber+  $	 GPA��$
 True��$ False��$ *  �� .R��� $��Center=�$ 5q����� *GPA+ �� StringFormat$ {0:F4}���� ���#ffffff$��1q�$��1��$��3��$ 5��$��10q� �� Padding$ 5q�._��  �� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� $��0��$��18(�$��Detailed Results��$��Center=�#��[ $��0 5 0 0q��� $��1�����#ffffff$��1q�$ 30��$ 
10 0 10 20q�$��60 10 60 20q����#ffffff J� Opacity$	 0.5Q�._�]� $��False��.+��  �� $
��auto ��� $
��auto ��� $��* �.+��� .+��� $��Student Name��$��Right=�$��0��$��15(�$��
20 20 10 0q�  windowTBTitle#��[ �� $��Index Number��$��Right=�$��1��$��15(�$��
20 20 10 0q�#��[ �� $��1��.+��� $��:��$
��Left=�$��0��$��15(�$��
10 20 10 0q�#��[ �� $��:��$
��Left=�$��1��$��15(�$��
10 20 10 0q�#��[ �� $��2��.+��� -    ��Name$
 mTB1��$
��Left=�$��0��$��15(�$��
10 20 10 0q�#��[ �� -   $
 mTB2��$
��Left=�$��1��$��15(�$��
10 20 10 0q�#��[ �� -   $��2��  loginButton#��[ $��
0 -10 10 0q�$��Edit Results��
������ $
��auto��$��5q�$��50��$��16(�$��SemiBold"�$��Right=�  -   $ results��$��3��# �  #���  # � 	 # � 
 $��15q�$ False������ *Student.Results+   $ Module Code��$
 True��$ False��$ *  �� .R��� $��Center=�$ 5q����� *Module.ModuleCode+$ PropertyChanged=� �� Mode$ TwoWay=�  $ Grade��$
 True��$ False��$ * -	   	mCode�� �� .R��� $	 cTB��$��Center=�$ 5q����� *Grade+$ PropertyChanged=�