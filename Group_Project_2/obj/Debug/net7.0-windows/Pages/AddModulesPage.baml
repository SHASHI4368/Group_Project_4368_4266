   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  5      I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  69   *    $Group_Project_2.Pages.AddModulesPage   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      1local#clr-namespace:Group_Project_2.Pages   5      8local1)clr-namespace:Group_Project_2.View_Models   69     N� Title$  AddModulesPage��5
       � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5       � DataContext 5      2   ,Group_Project_2.View_Models.AddModulesPageVM  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��40��6     
backButton#��[ 6*   $
��Left=�6N   $
��15 0q�6i   $	��110��6w   ��6�   �� *goBackCommand+.��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�6(   $��15��69   $��15��6E     gridButtonIcon#��[ 6P   $��0q�6x   $��0q�6�   $��Center=�6�   �� 5      $
��Back��6   $��22(�6(   $��	 10 0 0 0q�66   $��SemiBold"�6I   5      5      �� 5!   
   $��1��6   $��Center=�6!   $��30(�6>   $��SemiBold"�6L   $��
Add Module��6b   $��
0 -15 0 10q�6t     	titleText#��[ 6�   �� 5$   
   $��2��6   $
��30 0q�6"   .+�5%      �� .+�5&      �� $��Module Name��6   $��18(�6/   $��
20 10 10 0q�6=     loginTBTitle#��[ 6Q   � 5'      .+�5(      �� $��Center=�6     J� IsHitTestVisible$ False��6<   $��30 10 20 10q�6U    K� ZIndex$ 1��6j   $��18(�6{   $��Enter Module Name��6�     textHint#��[ 6  y�6�   ��  �� ElementName$ mName��	 �� Path$	 Text.IsEmpty�
 �� 	Converter#
 [  6  �� 5)      -   5         ��Name$ mName��5)   D     loginTextBox#��[ 6   $��20 10 20 10q�6S   $��18(�6h   ��6v   �� *MName+5*      5+      5,      � 5-   
   $��3��6    � ColumnDefinitions 5.      �� 5/      $��* �6#   �� 50      $��* �6#   .+�54      �� $��0��6   $
��30 0q�6)   .+�55      �� .+�56      �� $��Module Code��6    $��18(�63   $��
20 10 10 0q�6A   #��[ 6U   � 57      .+�58      �� $��Center=�6$   $ False��6?   $��30 10 20 10q�6X   $ 1��6m   $��18(�6~   $��Enter Module Code��6�   #��[ 6  y�6�   �� $ mCode��$	 Text.IsEmpty�#
 [  6  �� 59      -   5        $ mCode��59   H   #��[ 6"   $��20 10 20 10q�6W   $��18(�6l   ��6z   �� *MCode+5:      5;      5<      �� 5?      $��1��6   $
��30 0q�6)   .+�5@      �� .+�5A      �� $��Number of Credits��6    $��18(�69   $��
20 10 10 0q�6G   #��[ 6[   � 5B      .+�5C      �� $��Center=�6$   $ False��6?   $��30 10 20 10q�6X   $ 1��6m   $��18(�6~   $��Enter Number of Credits��6�   #��[ 6  y�6�   �� $ credits��$	 Text.IsEmpty�#
 [  6  �� 5D      -   5        $ credits��5D   H   #��[ 6"   $��20 10 20 10q�6Y   $��18(�6n   ��6|   �� *	Credits+6�   5E      5F      5G      5H      �� 5I   
   -   5          loginButton#��[ 5I      $��	0 30 0 20q�66   $��Center=�6I   $��
Add Module��6f   
������ $��18(�6�   $��SemiBold"�6�   $��5��6�   $��60��6�   $��5q�6�   ��6�   �� *addModuleCommand+6  5J      5K      