   M S B A M L   `   `   `  ����H  DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=nullZ=clr-namespace:MahApps.Metro.Behaviours;assembly=MahApps.MetroMahApps.Metro.Behaviours  5   
   V;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5	   
   @ <Vista, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:VistaVista 5   	      Vista.ListarContrato   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   
   N
behaviours=clr-namespace:MahApps.Metro.Behaviours;assembly=MahApps.Metro  5   
   JControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  5	   
   localclr-namespace:Vista  5   	     � Title$"  OnBreak - Lista de Contratos��5   	   $��516.473��6.   $��618.149��6?    � WindowStartupLocation$ CenterScreen=�6O   (   "MahApps.Metro.Controls.MetroWindow   WindowTitleBrush
 �   � � Icon$- 'Imagenes/white_logo_dark_background.jpg��6�    � 
ResizeMode$ NoResize=�6�   ���	#FF88D7F9.��5      � $��0,0,-7.2,-4.6q�6   ���	#FF88D7F9 � ColumnDefinitions 5   
   �� 5      $
��523* �6   �� 5      $	��33* �6   .+�5   
   �� -   5         ��Name$ btnSalir��5      $��Salir��6#   $
��Left=�63   $��288,434,0,0q�6N   $	��Top=�6c   $��75��6{   )   #MahApps.Metro.Controls.ButtonHelper   PreserveTextCase .  J� RenderTransformOrigin$ 1.662,0.727&�6�      AccentedSquareButtonStyle#��[  6�   &   System.Windows.Controls.DataGrid  5   
   -   5        	  Name$	 dgvLista��5      $
��Left=�6%   $��
68,201,0,0q�6@   $	��Top=�6T   $	��214��6l   $	��451��6y   $
��Bold"�6�   �� 5   
   -   5        
 ��Name$
 	gbFiltrar��5      $��Filtrar Información��6&   $
��Left=�6C   $��	68,10,0,0q�6^   $	��Top=�6q   $	��175��6�   $	��451��6�   .��5      � $
��Left=�6   $	��140��6.   $��
10,4,0,-16q�6;   $	��Top=�6O   $	��351��6g   .+�5      �� -   5         ��Name$ label��5      $��Número Contrato��6'   $
��Left=�6A   $	��Top=�6\   $��0,1,0,0q�6t   $
��Bold"�6�   �� 5      -   5        $ label1��5      $��Rut Cliente��6(   $
��Left=�6>   $��0,35,0,0q�6Y   $	��Top=�6k   $
��Bold"�6�   �� 5      -   5        $ label2��5      $��Tipo Evento��6(   $
��Left=�6>   $��0,71,0,0q�6Y   $	��Top=�6k   $
��Bold"�6�   �� 5      -   5         ��Name$ txtfiltroNumero��5      *   $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Ingrese Número��64   $
��Left=�6f   $��23��6�   $��	119,0,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��137��6�   $
��Bold"�6�      ClearTextButton . 6�   �� 5      -   5         ��Name$ cbofilTipoContrato��5      $
��Left=�67   $��
119,71,0,0q�6R   $	��Top=�6f   $	��137��6~   $
��Bold"�6�   �� 5      -	   5        $ btnFiltrarNum��5      $��Filtrar��60   $
��Left=�6B   $��	270,1,0,0q�6]   $	��Top=�6p   $��75��6�   $��Normal"�6�    . $ 1.662,0.727&�6�   #��[  6  �� 5      -
   5        $ btnFiltrarRut��5      $��Filtrar��60   $
��Left=�6B   $��
270,35,0,0q�6]   $	��Top=�6q   $��75��6�    . $ 1.662,0.727&�6�   #��[  6  �� 5      -   5        $ btnFiltrarTipo��5      $��Filtrar��61   $
��Left=�6C   $��
270,69,0,0q�6^   $	��Top=�6r   $��75��6�    . $ 1.662,0.727&�6�   #��[  6  $,��&Segoe UI, Lucida Sans Unicode, Verdana)�67  5      5       �� 5!   
   -   5        $ txtfiltroRut��5!      $ Ej. 11.111.111-1��6(   $
��Left=�6\   $��23��6w   $��
201,80,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��138��6�    . $
��Bold"�6�   �� 5"   
   -   5        $ btnPasar��5"      $��	Traspasar��6#   $
��Left=�67   $��128,434,0,0q�6R   $	��Top=�6g   $��82��6    . $ 1.662,0.727&�6�   #��[  6�   �� 5#   
   -   5        $ button��5#      $��?��6!   $
��Left=�6-   $��
450,80,0,0q�6H   $	��Top=�6\   $��32��6t   $��26��6�    . $ 1.662,0.727&�6�   #��[  6�   �� 5$   
   -   5        $ label2_Copy��5$      $��Modalidad Evento��6%   $
��Left=�6@   $��
83,153,0,0q�6[   $	��Top=�6o   $
��Bold"�6�   �� 5%   
   -   5        $ cbFiltroModalidad��5%      $
��Left=�6.   $��201,152,0,0q�6I   $	��Top=�6^   $	��138��6v   $
��Bold"�6�   �� 5&   
   -   5        $ btnFiltrarModalidad��5&      $��Filtrar��6.   $
��Left=�6@   $��353,150,0,0q�6[   $	��Top=�6p   $��75��6�    . $ 1.662,0.727&�6�   #��[  6  �� 5'   
   -   5        $ btnRefrescar��5'      $
��Left=�6'   $��464,428,0,0q�6B   $	��Top=�6W   $��40��6o    / +MahApps.Metro.Styles.MetroCircleButtonStyle#���  6�   $��39��6�   
���   � . $ 1.662,0.727&�6)  ��5(      �� 5)       �� ImageSource$ Command-Refresh1.png��6   5+      5-      5.      