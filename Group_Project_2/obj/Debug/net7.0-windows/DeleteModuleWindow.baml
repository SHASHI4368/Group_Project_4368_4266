   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Group_Project_2Group_Project_2  5   	   I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  5   	   (    "Group_Project_2.DeleteModuleWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   +localclr-namespace:Group_Project_2   5   	   8local1)clr-namespace:Group_Project_2.View_Models   5   	     � Title$  DeleteModuleWindow��5
   	   $	��200��6$   $	��400��61    � WindowStartupLocation$ CenterScreen=�6=    � WindowStyle$
 None=�6b    � AllowsTransparency$
 True��6u   
������  � DataContext 5      6   0Group_Project_2.View_Models.DeleteModuleWindowVM  5   
   .��5      �� -   5         �� CornerRadius$ 15��5      ���#ffffff$��1q�65   ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      �  � Color$ #3aa9ad��6   	 � Offset$	 0Q�6/   � 5      $ #3aada1��6   $	 1Q�6/   5      ._�5   
   � 
 � RowDefinitions
 5      �� 5      $
��auto �6    �� 5      $
��Auto �6    �� 5      $��* �6    .+�5      ��  �� Orientation$ 
Horizontal=�6   $��0��62   $��Right=�6?   $��0 5 5 0q�6[   $��1��6l   .+�5      �� -   5           	TopButton#��[  5   7   .��5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ WindowMinimize=�6,   $��10��6B   $��10��6N   5       �� 5!      -   5        #��[  5!   4   .��5"        $ close=�6,   $��10��69   $��10��6E   5#      5$      �� 5&      .+�5'      �  � Points' �    {� ����� �� {� ��
���#4eb1b66:   A� 5(      $��40��6   $��40��6%   ���#4eb1b6 �� Left$ 19��6@   
 �� Top$	 140��6Q   $
��Left=�6b   $	��Top=�6}   A� 5)      $��50��6   $��50��6%   ���#4eb1b6$ 39��6@   $ 10��6Q   $
��Left=�6a   $��Center=�6|   � 5*      ) �   ������������ �� �����#4eb1b6$	 210��6H   $	 -20��6Z   5+      �� 5-      $��1��6   .+�5.      �� $B��<Are you sure you want to delete this Module with Module code��6   $��18(�6`   $��	20 0 10 0q�6n   $
��Wrap=�6�     loginTBTitle#��[ 6�   �� 5/      $��18(�6?   $��
20 10 10 0q�6M   $��Center=�6a   #��[ 6~   ��6   �� *Module.ModuleCode+6~   50      �� 51      -   5          loginButton#��[ 51      $��	0 15 0 10q�6:   $��Delete Module��6M   
������ $��18(�6�   $��SemiBold"�6�   $��2��6�   $	��160��6�   ��6�   �� *deleteModuleCommand+6�   52      53      54      