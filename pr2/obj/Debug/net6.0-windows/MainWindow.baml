   M S B A M L   `   `   `  ????>  :pr2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:pr2pr2  5   	       pr2.MainWindow   5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   #localclr-namespace:pr2     5   	     ? Title$  
MainWindow??5	   	   $	??563??6   $	??950??6)   .??5
      ?  ? ColumnDefinitions 5   
   ?? 5      $
??104* ?6   ?? 5      $
??212* ?6   ?? 5      $	??68* ?6   ?? 5      $	??73* ?6   ?? 5      $	??71* ?6   ?? 5      $	??68* ?6   ?? 5      $	??64* ?6   ?? 5      $
??256* ?6   ?? 5      $	??34* ?6   ?? 5      $??0* ?6    ? RowDefinitions 5   
   ?? 5      $??349.001923076923 ?6   ?? 5      $	??56* ?6   ?? 5      $	??29* ?6   ?? 5      $
??113* ?6   .+?5   
   ?? -   5         ??Name$ btn_play??5         MaterialDesignIconButton#??[  5       ? ToolTip$ MaterialDesignIconButton??5        ( $MaterialDesignTextFieldBoxBackground#???  5!      $??10,32,13,33q?5"   ?   $??3??6?   $??4??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? RelativeSource ?? *FindAncestor+ ?? AncestorType
 Window.??5#      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Pause=?5$      5%      ?? 5&   
   -   5        $ btn_back??5&      #??[  5'      $ MaterialDesignIconButton??5(      #???  5)      $??15,32,10,33q?5*   ?   $??3??6?   $??3??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? *FindAncestor+
 Window.??5+        $ SkipBackward=?5,      5-      ?? 5.   
   -   5        $ btn_next??5.      #??[  5/      $ MaterialDesignIconButton??50      #???  51      $??10,32,10,33q?52   ?    ? Cursor$
 Hand??6?   $??3??6?   $??5??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? *FindAncestor+
 Window.??53        $ SkipForward=?54      $??Center=?6    55      ?? 56   
   -   5        $ 
btn_repeat??56      #??[  57      $ MaterialDesignIconButton??58      #???  59      $??	8,32,8,33q?5:   ?   $??3??6?   $??6??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? *FindAncestor+
 Window.??5;        $ Repeat=?5<      $??Center=?6   5=      ?? 5>   
   -   5        $ 
btn_random??5>      #??[  5?      $ MaterialDesignIconButton??5@      #???  5A      $??10,32,10,33q?5B   ?   $??3??6?   $??2??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? *FindAncestor+
 Window.??5C        $ Gambling=?5D      $??Center=?6   5E      ?? 5F   
   -   5        $ 
btn_folder??5F      #??[  5G      $ MaterialDesignIconButton??5H      #???  5I      $??28,32,28,33q?5J   ?   $??3??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? *FindAncestor+
 Window.??5K        -   5        	  Name$	 btn_folder1??5K   &   $ 
FolderEdit=?5L      $??Center=?6   5M      ?? 5N   
   -   5        
 ??Name$
 
sld_second??5N       ? Minimum$ 0Q?5O       ? Maximum$ 50Q?5P       ? Value$ 35Q?5Q      $??
10,8,10,21q?6   $??1??6S   $??9??6`   ?? 5R   
   -	   5        $
 sld_gromkost??5R      $ 0Q?5S      $ 1Q?5T      $ 1Q?5U      $??37,18,33,21q?6    ? LargeChange$	 0.1Q?6U    ? SmallChange$
 0.05Q?6g   $??3??6z   $??7??6?   ?? 5V   
   -
   5         ??Name$ ListBox??5V      $??10,10,10,185q?6N   $??9??6?   r? 5W   
   -   5         r?Name$ player??5W       r? LoadedBehavior$ Manual=?6'   $??-1013,-5,191,-86q?6Z   $??4??6t   5X      5Y      