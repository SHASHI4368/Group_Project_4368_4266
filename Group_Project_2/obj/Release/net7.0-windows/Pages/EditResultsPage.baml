   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  +    %Group_Project_2.Pages.EditResultsPage   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   <d2http://schemas.microsoft.com/expression/blend/2008   1local#clr-namespace:Group_Project_2.Pages   8local1)clr-namespace:Group_Project_2.View_Models     N� Title$  EditResultsPage�� � DataContext 3   -Group_Project_2.View_Models.EditResultsPageVM   � 	Resources    	BoolToVis��%   &	        �� .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� $��0��$��40��  
backButton#��[ $
��Left=�$
��15 0q�$	��110������ *goBackCommand+.����  �� Orientation$ 
Horizontal=�.+�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�$��15��$��15��  gridButtonIcon#��[ $��0q�$��0q�$��Center=��� $
��Back��$��22(�$��	 10 0 0 0q�$��SemiBold"��� $��1��$��Center=�$��30(�$��SemiBold"�$�� Edit Results��$��15q�  	titleText#��[ �� ���#ffffff$��1q� �� CornerRadius$ 30�� �� Padding$ 
10 0 10 20q�$��2��$��60 10 60 20q����#ffffff J� Opacity$	 0.5Q�._�]� $��False��.+�� 	 � ColumnDefinitions	 �� $
��auto ��� $
��auto ��� $��* �.+��� .+��� $��Student Name��$��Right=�$��0��$��15(�$��
20 20 10 0q�  windowTBTitle#��[ �� $��Index Number��$��Right=�$��1��$��15(�$��
20 20 10 0q�#��[ �� $��1��.+��� $��:��$
��Left=�$��0��$��15(�$��
10 20 10 0q�#��[ �� $��:��$
��Left=�$��1��$��15(�$��
10 20 10 0q�#��[ �� $��2��.+��� $
��Left=�$��0��$��15(�$��
10 20 10 0q�#��[ ���� *Student.FullName+�� $
��Left=�$��1��$��15(�$��
10 20 10 0q�#��[ ���� *Student.RegNumber+� $��3��	 �� $��5* ��� $��3* �.+��� ���#ffffff$��1q�$��0��$ 5��$��10q�._��� $��5q�.+��� $��18(�$��Selected Modules��$��Center=�  loginTBTitle#��[ $��0 10 0 0q�&   System.Windows.Controls.DataGrid  -   
  Name$
 
allResults��  DataGridRowStyle1   RowStyle# �    DataGridStyle1#���    DataGridCellStyle1   	CellStyle# �   	 DataGridColumnHeaderStyle1   ColumnHeaderStyle# � 	 $��20q�   AutoGenerateColumns$ False������ *	Modules+   Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Select��   
IsReadOnly$
 True��   CanUserResize$ False��   Width5  /System.Windows.Controls.DataGridLengthConverter$ 80    CellTemplate �� .R��� -   $��Center=�$��Center=� 
 gridEditButton#��[
 $��25������ .��  $
 Plus=�#��[ $��10��$��10��$��Center=�  $ Module Code��$
 True��$ False��$	 150  �� .R��� $��Center=� �� Padding$ 5q����� *
ModuleCode+  $ Module Name��$
 True��$ False��$ *  �� .R��� $
��Left=�$
��Wrap=�$ 5q����� *
ModuleName+�� ���#ffffff$��1q�$��1��$��3��$ 5��$��10q�._��  �� $
��auto ��� $��* ��� $
��auto �.+��� $��0��$��18(�$��Current Results��$��Center=�$	��Top=�#��[ $��0 10 0 0q�  -   $
 cResults��$��1��  DataGridRowStyle2# �  #���  # �  # � 	 $��20q�$ False������ *	Results+   $ Select��$
 True��$ False��$ 80  �� .R��� -   $��Center=�$��Center=�#��[
 $��25������ .��  $ Minus=�#��[ $��10��$��10��$��Center=�  $ Module Code��$
 True��$ False��$ *  �� .R��� $��Center=�$ 5q����� *Module.ModuleCode+  $ Marks��$ False��$ False��$	 120 -   	marks�� �� .R���   resultsTextBox#��[ ���#000000���#3aa9ad���� *Marks+ �� UpdateSourceTrigger$ PropertyChanged=��� -   $��2��$��0 5 0 5q�$��Edit Results��
������ $
��auto��$��15q�$��50��$��16(�$��SemiBold"�$��Center=�  loginButton#��[ 