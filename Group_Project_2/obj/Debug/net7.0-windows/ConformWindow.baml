   M S B A M L   `   `   `  ����J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Group_Project_2Group_Project_2  5   	   I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  5   D   #    Group_Project_2.ConformWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Group_Project_2     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   8local1)clr-namespace:Group_Project_2.View_Models   6D     � Title$  ConformWindow��5	   	   $	��200��6   $	��400��6,    � WindowStartupLocation$ CenterScreen=�68    � WindowStyle$
 None=�6]    � AllowsTransparency$
 True��6p   
������  � DataContext 5
      1   +Group_Project_2.View_Models.ConformWindowVM  5   
    � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5      .��5      �� -   5         �� CornerRadius$ 15��5      ���#ffffff$��1q�65   ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      � 	 � Color$	 #3aa9ad��6   
 � Offset$
 0Q�6/   � 5      $	 #3aada1��6   $
 1Q�6/   5      ._�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    .+�5      ��  �� Orientation$ 
Horizontal=�6   $��0��62   $��Right=�6?   $��	0 15 15 0q�6[   $��1��6n   .+�5       �� -   5          	TopButton#��[ 5    7   .��5!      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ WindowMinimize=�6,   $��10��6B   $��10��6N   5"      �� 5#      -   5        #��[ 5#   4   .��5$        $ close=�6,   $��10��69   $��10��6E   5%      5&      �� 5)      .+�5*      �  � Points' �    {� ����� �� {� ��
���#4eb1b66:   A� 5+      $��40��6   $��40��6%   ���#4eb1b6 �� Left$ 19��6@   
 �� Top$	 140��6Q   $
��Left=�6b   $	��Top=�6}   A� 5,      $��50��6   $��50��6%   ���#4eb1b6$ 39��6@   $ 10��6Q   $
��Left=�6a   $��Center=�6|   � 5-      ) �   ������������ �� �����#4eb1b6$	 210��6H   $	 -20��6Z   5.      �� 50      $��1��6   .+�51      �� $��1��6   $��10 -10 10 5q�6*   .+�52      �� .+�53      �� $ ��Please Enter Your Password��6$   $��18(�6F   $��
20 10 10 0q�6T     loginTBTitle#��[ 6h   � 54      .+�55      G� -   5         G�Name$ pw��55   T     loginPasswordBox#��[ 6*   $��
20 10 20 0q�6`   $��18(�6t   6�   56      57      58      59      �� 5:      -   5          loginButton#��[ 5:      $��	0 -10 0 0q�6:   $��Conform��6M   
������ $��18(�6z   $��SemiBold"�6�   $��2��6�   $��60��6�   $	��150��6�   6�   5;      5<      5=      