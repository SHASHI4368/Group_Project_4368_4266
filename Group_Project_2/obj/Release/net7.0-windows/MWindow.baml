   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Group_Project_2Group_Project_2  I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models      Group_Project_2.MWindow   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:Group_Project_2     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   8local1)clr-namespace:Group_Project_2.View_Models     � Title$  MWindow��$	��200��$	��400�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=� � AllowsTransparency$
 True��
������  � DataContext +   %Group_Project_2.View_Models.MWindowVM   � 	Resources    	BoolToVis��%   &	        �� .���� -    �� CornerRadius$ 15�����#ffffff$��1q�����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.��� 	 � Color$	 #3aa9ad��
 � Offset$
 0Q�� $	 #3aada1��$
 1Q�._��  � RowDefinitions �� $
��auto ��� $��* �.+���  �� Orientation$ 
Horizontal=�$��0��$��Right=�$��	0 15 15 0q�$��1��.+��� -     	TopButton#��[ .��.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ WindowMinimize=�$��10��$��10���� -   #��[ .��  $ close=�$��10��$��10���� .+��  � Points' �    {� ����� �� {� ��
���#4eb1b6A� $��40��$��40�����#4eb1b6 �� Left$ 19��
 �� Top$	 140��$
��Left=�$	��Top=�A� $��50��$��50�����#4eb1b6$ 39��$ 10��$
��Left=�$��Center=�� ) �   ������������ �� �����#4eb1b6$	 210��$	 -20����   loginTBTitle#��[ $��18(�$��20q�$��1��$
��Wrap=�$��Center=�$��Center=����� *	Message+