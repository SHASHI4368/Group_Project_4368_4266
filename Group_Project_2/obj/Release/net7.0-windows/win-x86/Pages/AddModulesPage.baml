   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Group_Project_2.PagesGroup_Project_2.Pages  I)clr-namespace:Group_Project_2.View_ModelsGroup_Project_2.View_Models  *    $Group_Project_2.Pages.AddModulesPage   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   <d2http://schemas.microsoft.com/expression/blend/2008   1local#clr-namespace:Group_Project_2.Pages   8local1)clr-namespace:Group_Project_2.View_Models     N� Title$  AddModulesPage�� � 	Resources    	BoolToVis��%   &	        ��  � DataContext 2   ,Group_Project_2.View_Models.AddModulesPageVM  .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� $��0��$��40��  
backButton#��[ $
��Left=�$
��15 0q�$	��110������ *goBackCommand+.����  �� Orientation$ 
Horizontal=�.+�.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	ArrowLeft=�$��15��$��15��  gridButtonIcon#��[ $��0q�$��0q�$��Center=��� $
��Back��$��22(�$��	 10 0 0 0q�$��SemiBold"��� $��1��$��Center=�$��30(�$��SemiBold"�$��
Add Module��$��
0 -15 0 10q�  	titleText#��[ �� $��2��$
��30 0q�.+��� .+��� $��Module Name��$��18(�$��
20 10 10 0q�  loginTBTitle#��[ � .+��� $��Center=����#575b5e J� IsHitTestVisible$ False��$��30 10 20 10q� K� ZIndex$ 1��$��18(�$��Enter Module Name��  textHint#��[ y���  �� ElementName$ mName��	 �� Path$	 Text.IsEmpty�
 �� 	Converter#
 [  �� -    ��Name$ mName��  loginTextBox#��[ $��20 10 20 10q�$��18(����� *MName+� $��3�� � ColumnDefinitions �� $��* ��� $��* �.+��� $��0��$
��30 0q�.+��� .+��� $��Module Code��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Module Code��#��[ y��� $ mCode��$	 Text.IsEmpty�#
 [  �� -   $ mCode��#��[ $��20 10 20 10q�$��18(����� *MCode+�� $��1��$
��30 0q�.+��� .+��� $��Number of Credits��$��18(�$��
20 10 10 0q�#��[ � .+��� $��Center=����#575b5e$ False��$��30 10 20 10q�$ 1��$��18(�$��Enter Number of Credits��#��[ y��� $ fName��$	 Text.IsEmpty�#
 [  �� -   $ fName��#��[ $��20 10 20 10q�$��18(����� *	Credits+��   loginButton#��[ $��	0 30 0 20q�$��Center=�$��
Add Module��
������ $��18(�$��SemiBold"�$��5��$��60��$��5q����� *addModuleCommand+