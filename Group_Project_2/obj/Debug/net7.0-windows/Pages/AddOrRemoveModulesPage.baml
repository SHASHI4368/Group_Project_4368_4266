   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  5      I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  69   2    ,Group_Project_2.Pages.AddOrRemoveModulesPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      1local#clr-namespace:Group_Project_2.Pages   5      8local1)clr-namespace:Group_Project_2.View_Models   69   -   5          N� Title$  AddOrRemoveModulesPage��5       � DataContext 5      :   4Group_Project_2.View_Models.AddOrRemoveModulesPageVM  5   
   .��5      � .+�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    .+�5      �� $��0��6   $��40��6"      
backButton#��[  6.   $
��Left=�6R   $
��15 0q�6m   $	��110��6{   ��6�   �� *goBackCommand+.��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�6,   $��15��6=   $��15��6I     gridButtonIcon#��[ 6T   $��0q�6|   $��0q�6�   $��Center=�6�   �� 5      $
��Back��6    $��22(�6,   $��	 10 0 0 0q�6:   $��SemiBold"�6M   5      5      �� 5      $��1��6   $��Add/Remove Modules��6%   $��30(�6?   $��Center=�6M   $��	0 10 0 10q�6j     	titleText#��[ 6}   �� 5!      -   5         ��Name$ b1��5!   :     loginButton#��[ 6   $��Add New Module��6G   
������ $��18(�6{   $��Right=�6�   $��
0 20 40 20q�6�   $��SemiBold"�6�   $��2��6�   $��10q�6�   $	��180��6�   ��6�   �� *openAddModulesCommand+&   System.Windows.Controls.DataGrid  5$      -   5        $��
moduleGrid��5$   6    DataGridRowStyle1   RowStyle# �  6     DataGridStyle1#���  6F     DataGridCellStyle1   	CellStyle# �  6o     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6�   $��3��6�   $��40q�6�   	   AutoGenerateColumns$	 False��6  ��6�   �� *	Modules+
   Columns
 5%      4  .System.Windows.Controls.DataGridTemplateColumn  5(      ,  &System.Windows.Controls.DataGridColumn   Header$ Module Code��6-      
IsReadOnly$
 True��6B      CanUserResize$ False��6T      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6j      CellTemplate 5)      �� 5*      .R�5+   "   �� $��Center=�6H   $
��Wrap=�6e   ��6,   �� *
ModuleCode+6e   5,      5.        51      $ Module Name��6-   $
 True��6B   $ False��6T   $ * 6j    52      �� 53      .R�54   "   �� $
��Left=�6H   $��20 0 0 0q�6c   ��6,   �� *
ModuleName+6c   55      57        5:      $ Number of Credits��6-   $
 True��6H   $ False��6Z   $
 auto 6p    5;      �� 5<      .R�5=   "   �� $��Center=�6E   ��6,   �� *	Credits+6E   5>      5@        5D      $ 
Operations��6-   $
 True��6A   $
 auto 6S    5E      �� 5F      .R�5G   "   �� $ 
Horizontal=�6-   $��Center=�6F   .+�5H   &   �� -   5          gridEditButton#��[ 5H   -   $��0 0 5 0q�6�   ��6j   �� .��5I   *     $ PencilOutline=�6@   #��[ 6U   5J   '   �� 5K   &   -   5        #��[ 5K   -   $��5 0 0 0q�6U   ��6}   �� .��5L   *     $ DeleteOutline=�6@   #��[ 6U   5M   '   5N   #   5O      5Q      5T      5U      5V      5W      