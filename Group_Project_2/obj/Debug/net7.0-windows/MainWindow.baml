   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Group_Project_2Group_Project_2  5   	   I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  5   	        Group_Project_2.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Group_Project_2     5   	   <local1)clr-namespace:Group_Project_2.View_Models     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5	   	     � Title$  
MainWindow��5
   	   $	��720��6   $
��1080��6)    � WindowStyle$
 None=�66    � WindowState$ Normal=�6I    � WindowStartupLocation$ CenterScreen=�6^    � AllowsTransparency$
 True��6�   
������  � DataContext 5      .   (Group_Project_2.View_Models.MainWindowVM  5   
   .��5      �� -   5         �� CornerRadius$ 15��5      ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      � 	 � Color$	 #3aa9ad��6   
 � Offset$
 0Q�6/   � 5      $	 #3aada1��6   $
 1Q�6/   5      ._�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $��* �6    .+�5      ��  �� Orientation$ 
Horizontal=�6   $��0��62   $��Right=�6?   $��	0 15 15 0q�6[   $��1��6n   .+�5      �� -   5           	TopButton#��[  5   7   .��5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ WindowMinimize=�6,   $��15��6B   $��15��6N   5      �� 5       -   5        #��[  5    7   .��5!        $ WindowMaximize=�6,   $��15��6B   $��15��6N   5"      �� 5#      -   5        #��[  5#   4   .��5$        $ close=�6,   $��15��69   $��15��6E   5%      5&      �� 5(      .+�5)      �  � Points �    -1��� ;X�����#4eb1b666   � 5*      ' �   ��� T�*��� �� �� T�* K� ZIndex$ 1��6:   ���#4eb1b66K   � 5+      ' �    ~_@��� �/ �C ~_@�G����#4eb1b66=   � 5,       �   ����f� ;X 8����#4eb1b6$��Center=�6F    �� Left$ 19��6c   $	��Top=�6t   $	��178��6�   $	��382��6�   � 5-      ' �    �� �� ���� ��
 e����#4eb1b6$	 504��6J   
 �� Top$
 -115��6\   A� 5.      $��40��6   $��38��6%   ���#4eb1b6$	 644��6@   $	 116��6R   $
��Left=�6c   $	��Top=�6~   A� 5/      $	��100��6   $	��100��6&   ���#4eb1b6$	 301��6B   $	 205��6T   $
��Left=�6e   $	��Top=�6�   A� 50      $	��100��6   $	��100��6&   ���#4eb1b6$	 299��6B   $	 587��6T   $
��Left=�6e   $	��Top=�6�   A� 51      $	��108��6   $	��106��6&   ���#4eb1b6$	 630��6B   $	 514��6T   A� 52      $	��150��6   $	��150��6&   ���#4eb1b6$	 842��6B   $	 562��6T   53       � 55      -   5          �Name$ MainWindowFrame��55   !   $��1��6   $��Stretch=�6:   $��Stretch=�6X     � NavigationUIVisibility$ Hidden=�6t   56      57      58      