   M S B A M L   `   `   `  ���� J  FGroup_Project_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Group_Project_2Group_Project_2  b ^PresentationFramework.Aero2, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes     Group_Project_2.App   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   +localclr-namespace:Group_Project_2   YthemeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2     �� 	Resources     DataGridStyle1 �� 
TargetType&   System.Windows.Controls.DataGrid �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels ��Name � ColumnDefinitions	 � RowDefinitions
   SelectAllCommand �� 
ResourceId �� TypeInTargetAssembly7  1System.Windows.Controls.DataGridHeadersVisibility
   All �� ConverterParameter!   HeadersVisibilityConverter �� 	Converter �� RelativeSource �� AncestorTypeG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter  Name   Column ��Name �� CanContentScroll ��Name �� ScrollableHeight � Maximum �� Orientation �� ViewportHeight �� ViewportSize* �� #ComputedVerticalScrollBarVisibility � Value �� Mode  �� ScrollableWidth! �� ViewportWidth," �� %ComputedHorizontalScrollBarVisibility# �� Triggers$ ]� 
Conditions% �� Property& �� Value  DataGridCellStyle1*  $System.Windows.Controls.DataGridCell  DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader3  -Microsoft.Windows.Themes.DataGridHeaderBorder'   	IsPressed( J� IsMouseOver)   	IsHovered*   CanUserSort+   IsClickable,   SortDirection-   SortDirection.   SeparatorVisibility/   SeparatorVisibility0   SeparatorBrush1   SeparatorBrush  DataGridRowStyle1)  #System.Windows.Controls.DataGridRow2 ��Name3 �� CornerRadius?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid?	  9System.Windows.Controls.Primitives.DataGridCellsPresenter4   
ItemsPanelA
  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter5   DetailsVisibility$6   SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientation7   Vertical#8   RowDetailsScrollingConverter:  4System.Windows.Controls.Primitives.DataGridRowHeader
9   Row: P� Property; P� Value  DataGridRowStyle2  
mainButton  	myTextBox< �� Triggers= �� 
TargetName  myPasswordBox  gridEditButton 	 gridRemoveButton> �� BasedOn 
 gridButtonIcon.  (MahApps.Metro.IconPacks.PackIconMaterial  	TopButton  	titleText  loginTextBox  resultsTextBox  loginPasswordBox  loginTBTitle  windowTBTitle  loginButton  
backButton  
buttonText  textHint 	 radio? A�Name��%�)  &	        &	 r    &	 Q    &	 �	    &	 �    &	 �    &	 �    &	 �    &	 Y    &		 �    7  &	
 u    &	 �    &	     &	 �    &	 �    &	 �    &	 �     &	 F!    &	 �!    &	 �#    &	 K%    &	 J&    &	 �&    �� "  .���  � ��
 ���� ��  � �� �#222528��  � ��$ 1q���   �@ RowDetailsVisibilityMode$ VisibleWhenSelected=���  � ��$
 true����  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled$ False����  �@ AutoGenerateColumns$ False����  �@ HeadersVisibility$ Column=���  � ��$ 0 10 0 0q���  �@ SelectionMode$ Single=���  �@ SelectionUnit$ FullRow=���  �@ CanUserAddRows$ False����  �@ CanUserDeleteRows$ False����  �@ CanUserResizeRows$ False����  �@ CanUserReorderColumns$ False����  � ��$ 13(���  �@ GridLinesVisibility$ Vertical=���  �@ VerticalGridLinesBrush
 ���� ��  � �� �� "  .R��� #��z��#��z��#��z��# z��$
 True��._��� $ DG_ScrollViewer��$|�false������ " ��.R��  �� $
��Auto ��� $��* ��� $
��Auto �	 �� $
��Auto ��� $��* ��� $
��Auto �.+��� #��Z
 $|�false����C� *�� $" DataGridSelectAllButtonStyle��"  +y��� *HeadersVisibility+# Z # Z  �� "  ���� *CellsPanelHorizontalOffset+ �� "    $! PART_ColumnHeadersPresenter��$��1��y��� *HeadersVisibility+# Z # Z  �� "  �� $! PART_ScrollContentPresenter��# z��$��2��$��1���� $ PART_VerticalScrollBar��$��2��# z $ Vertical=�$��1��# z #y�z  �� *VerticalOffset+$ OneWay=� �� *TemplatedParent+� $��1��$��2�� �� ���� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� $��* �.+��� $ PART_HorizontalScrollBar��$��1��# z  $ 
Horizontal=�# z! #y�z"  �� *HorizontalOffset+$ OneWay=� �� *TemplatedParent+.���� # z # ]� $ �� % �@��
IsGrouping$
& true���� "% �@%�IsVirtualizingWhenGrouping$& false��./���  � ��$ false���� "  .���  � ��
 ���� ��  � ��$ Center=���  �@�FocusVisualStyle Z� ��  � ��$
 20 0q���  � ��$ 5q���  � �� �� "  .R��� #��z��$��0q�$
 True��._��� # z �� "  .���  � ��$ Center=���  � ��
 ���� ��  � ��$ Center=���  � ��$ Center=���  � �� �#ffffff��  � ��$ 0 5 0 10q���  � ��$
 10 0q���  � �� �� "  .R�� .+�  #��z��#��z��#��z��#' z��#) z( #+ z* # z��#- z, #/ z. #1 z0 ._��� #��z��$
��True��# z #��z���� "  .���  � ��
 �������  � ��$ 0 4 0 0q���  �@J�SnapsToDevicePixels$
 true����  �@=�ErrorTemplate Z� ��  �@ ValidationErrorTemplate �� .R��� 
���  ��$��2,0,0,0q�$��!��$��Center=���  � �� �� "  .R��� $2 
DGR_Border��#��z��$3 5��$	 0 8q�$��0q�$
 True��._�   �� $
��Auto ��� $��* �	 �� $��* ��� $
��Auto �.+�	  $��1��#��z4 # z 
  $��1��$��1��#y�z5 6 �� *AreRowDetailsFrozen+# Z7 # Z8  �� "    $��2��$6 Vertical=�y��� *HeadersVisibility+# Z9 # Z  �� "  # P� : �@J�IsMouseOver$
; True��. ���  � �� �#ffffff��  �@J�Opacity$	 0.5Q���  � �� �#000000P� : �@ 
IsSelected$
; True��. ���  � ��
 ���� ��  �@J�Opacity$	 0.5Q���  � �� �#000000]� $ �� % �@ 
IsSelected$
& True���� % �@��IsSelectionActive$& False��./���  � ��
 ���� ��  � ��
 �   ��� "  .���  � ��
 �������  � ��$ 0 4 0 0q���  �@J�SnapsToDevicePixels$
 true����  �@=�ErrorTemplate Z� ��  �@ ValidationErrorTemplate �� .R��� 
���  ��$��2,0,0,0q�$��!��$��Center=���  � �� �� "  .R��� $2 
DGR_Border��#��z��$3 5��$	 0 8q�$��0q�$
 True��._�   �� $
��Auto ��� $��* �	 �� $��* ��� $
��Auto �.+�	  $��1��#��z4 # z 
  $��1��$��1��#y�z5 6 �� *AreRowDetailsFrozen+# Z7 # Z8  �� "    $��2��$6 Vertical=�y��� *HeadersVisibility+# Z9 # Z  �� "  # P� : �@J�IsMouseOver$
; True��. ���  � �� �#ffffff��  �@J�Opacity$	 0.5Q���  � �� �#000000P� : �@ 
IsSelected$
; True��. ���  � �� �#3aa9ad��  �@J�Opacity$	 0.5Q���  � �� �#000000]� $ �� % �@ 
IsSelected$
& True���� % �@��IsSelectionActive$& False��./���  � �� �#3aa9ad��  � ��
 �   ��� " ��.���  �@�FocusVisualStyle Z� ��  � �� �	#FFCB21CB��  � ��
 �������  � ��$ Center=���  � �� �� " ��.R��� #��z��$3 5��$ 5q�._��� $��Center=�$��Center=�# P� : �@J�IsMouseOver$
; True��. ���  � ��
 �� ����  � ��
 ������� " ��.���  � �� �#d3ddeb��  � �� �#232629��  � ��$ 0q���  � ��$ 10 5 q���  � �� �� " ��.R��� $2 border��$3 5��#��z��$
 True��$��1q����#e0e6ed._��� $ PART_ContentHost��$|�False��$��Hidden=�$��Hidden=�< P� : �@J�IsMouseOver$
; True��. ��� $= border�� � �� �#d9d9d9P� : �@J�IsKeyboardFocused$
; True��. ��� $= border�� � �� �#d9d9d9�� " G�.���  � �� �#d3ddeb��  � �� �#232629��  � ��$ 0q���  � ��$ 10 5 q���  � �� �� " G�.R��� $2 border��$3 10��#��z��$
 True��$��1q����#e0e6ed._��� $ PART_ContentHost��$|�False��$��Hidden=�$��Hidden=�< P� : �@J�IsMouseOver$
; True��. ��� $= border�� � �� �#d9d9d9P� : �@J�IsKeyboardFocused$
; True��. ��� $= border�� � �� �#d9d9d9�� " ��.���  � �� �#3aa9ad��  � �� �	#FF3D4248��  � �� �#ffffff��  �@�FocusVisualStyle Z� ��  � ��$ Center=���  � ��$	 1 0q���  � �� �� " ��.R��� #��z��$3 5��$ 5q�$��1q�#��z��._��� $��Center=�$��Center=�# P� : �@J�IsMouseOver$
; True��. ���  � �� �	#FF3D4248��  � �� �#ffffff�� " ��8>   .���  � �� �#d32f2f��  � �� �#b71c1c# P� : �@J�IsMouseOver$
; True��. ���  � �� �#f44336�� "  .���  � ��$ 12����  � ��$ 12����  � ��$ Center=��� " ��.���  � ��
 ���� ��  � �� �	#FF3D4248��  �@�FocusVisualStyle Z� ��  � ��$ 30����  � ��$ 20����  � ��$
 Left=���  � �� �� " ��.R��� #��z��$3 50��._��� $��Center=�$��Center=�# P� : �@J�IsMouseOver$
; True��. ���  � �� �#dcdcdc�� " ��.���  � ��$ 36(���  � ��$
 Bold"���  �@��TextAlignment$ Center=���  � �� �#ffffff�� " ��.���  � �� �#d3ddeb��  �@J�Opacity$	 0.5Q���  � �� �#232629��  � ��$ 0q���  � ��$ 10 5 q���  � �� �� " ��.R��� $2 border��$3 5��#��z��$
 True��$��1q����#e0e6ed._��� $ PART_ContentHost��$|�False��$��Hidden=�$��Hidden=�$
��Left=�$
��10 0q�$��Center=�< P� : �@J�IsMouseOver$
; True��. ��� $= border�� � �� �#000000P� : �@J�IsKeyboardFocused$
; True��. ��� $= border�� � �� �#000000�� " ��.���  � �� �#ffffff��  �@J�Opacity$	 0.5Q���  � �� �#000000��  � ��$ 0q���  � ��$ 10 5 q���  � �� �� " ��.R��� $2 border��$3 5��#��z��$
 True��$��1q����#e0e6ed._��� $ PART_ContentHost��$|�False��$��Hidden=�$��Hidden=�$
��Left=�$
��10 0q�$��Center=�< P� : �@J�IsMouseOver$
; True��. ��� $= border�� � �� �#d9d9d9P� : �@J�IsKeyboardFocused$
; True��. ��� $= border�� � �� �#d9d9d9�� $= border�� � �� �#d9d9d9�� " G�.���  � �� �#d3ddeb��  �@J�Opacity$	 0.5Q���  � �� �#232629��  � ��$ 0q���  � ��$
 10 5q���  � �� �� " G�.R��� $2 border��$3 5��#��z��$
 True��$��1q����#e0e6ed._��� $ PART_ContentHost��$|�False��$��Hidden=�$��Hidden=�$
��Left=�$
��10 0q�$��Center=�< P� : �@J�IsMouseOver$
; True��. ��� $= border�� � �� �#000000P� : �@J�IsKeyboardFocused$
; True��. ��� $= border�� � �� �#000000�� " ��.���  � ��$ 20(���  � ��$ Light"���  �@��TextAlignment$
 Left=���  � �� �#ffffff�� " ��.���  � ��$ 20(���  � ��$ Light"���  �@��TextAlignment$
 Left=���  � �� �#000000�� " ��.���  � ��$ 14(���  � ��$	 170����  � ��
 ���� ��  � �� �#fdfefe��  �@�FocusVisualStyle Z� ��  � �� �� " ��.R��� #��z��$3 25��$��1q�
�������$ 15q�._��� $��Center=�$��Center=�# P� : �@J�IsMouseOver$
; True��. ���  � �� �#e8e8e8��  � ��
 �iii�P� : �@J�IsMouseCaptured$
; True��. ���  � �� �#d9d9d9��  � ��
 �iii��� " ��.���  � ��$ 14(���  � ��$	 170����  � ��
 ���� ��  � �� �#fdfefe��  �@�FocusVisualStyle Z� ��  � �� �� " ��.R��� #��z��$3 15��$��1q�
�������$ 0q�._��� $��Center=�$��Center=�# P� : �@J�IsMouseOver$
; True��. ���  � �� �#e8e8e8��  � ��
 �iii�P� : �@J�IsMouseCaptured$
; True��. ���  � �� �#d9d9d9��  � ��
 �iii��� " ��.���  � ��
 ���� ��  � �� �#fdfefe# P� : �@J�IsMouseOver$
; True��. ���  � �� �#e8e8e8��  � ��
 �iii�P� : �@J�IsMouseCaptured$
; True��. ���  � �� �#d9d9d9��  � ��
 �iii��� " ��.���  � ��$ 14(���  � ��$ 1����  �@K�ZIndex$ 1����  � ��$ 10 0 0 0q���  � �� �	#FFD5EDE7��  �@��Padding$ 10 0 0 0q��� " 	�.���  � ��
 ���� ��  � �� �#ffffff��  � �� �� " 	�.R��  �� $
��Auto ��� $��* �.+�A� $? RadioCircle��$��0��$��12��$��12�����#ffffff$��1��#��z���� $��1��$
��Left=�$��Center=�$��10,0,0,0q�#��z��< P� : �@d�	IsChecked$
; TrueY�. ��� $= RadioCircle�� � �� �#ffffffP� : �@J�IsMouseOver$
; True��. ��� $= RadioCircle�� � �� �	#FF828C89