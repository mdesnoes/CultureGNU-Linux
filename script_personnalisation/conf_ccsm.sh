#!/bin/bash

echo "*** Installation du paquet compizconfig-settings-manager ***"
if sudo apt-get install compizconfig-settings-manager ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"


echo "*** Sauvegarde de l'ancien environnement dans le fichier unity_original.ini ***"
if sudo cp ~/.config/compiz-1/compizconfig/unity.ini ~/.config/compiz-1/compizconfig/unity_original.ini ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Gestion de l'interface par flat-file ***"
if sudo echo -e "[general_ubuntu]
backend = ini
profile = unity" > ~/.config/compiz-1/compizconfig/config ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Ecriture des configurations dans le fichier unity.ini ***"
if sudo echo -e "[screenshot]
s0_selection_outline_color = #2f2f4f9f
s0_selection_fill_color = #2f2f4f4f
s0_directory = /home/etudiant/Images

[animation]
s0_open_effects = animation:Dream;animation:Fade;animation:Fade;
s0_open_matches = ((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver);((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=\.exe$));(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd);
s0_close_effects = animation:Dream;animation:Fade;animation:Fade;
s0_close_matches = ((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver) & !(name=gnome-screenshot);((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=\.exe$));(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd);
s0_minimize_effects = animation:Random;
s0_unminimize_effects = animation:Random;

[resizeinfo]
s0_gradient_1 = #cccce6cc
s0_gradient_2 = #f3f3f3cc
s0_gradient_3 = #d9d9d9cc
s0_outline_color = #e6e6e6ff

[showmouse]
s0_color = #ffdf3fff

[cubeaddon]
s0_ground_color1 = #b3b3b3cc
s0_ground_color2 = #b3b3b300

[shift]
s0_ground_color1 = #b3b3b3cc
s0_ground_color2 = #b3b3b300

[vpswitch]
s0_switch_to_1_key = <Super>a
s0_switch_to_2_key = <Super>b

[ezoom]
s0_zoom_box_outline_color = #2f2f4f9f
s0_zoom_box_fill_color = #2f2f2f4f

[grid]
s0_put_maximize_key = Disabled
s0_put_restore_key = <Control><Alt>Down
s0_left_maximize = Disabled
s0_right_maximize = Disabled
s0_top_left_corner_action = 7
s0_top_right_corner_action = 9
s0_bottom_left_corner_action = 1
s0_bottom_right_corner_action = 3

[thumbnail]
s0_thumb_color = #0000007f
s0_current_viewport = false
s0_font_background_color = #0000007f

[core]
s0_active_plugins = core;composite;opengl;place;wall;move;annotate;mousepoll;snap;session;grid;firepaint;imgpng;resize;compiztoolbox;regex;switcher;ring;scale;screenshot;animation;workarounds;expo;unityshell;
s0_autoraise = false
s0_autoraise_delay = 500
s0_show_desktop_key = <Control><Super>d

[firepaint]
s0_fire_size = 5,000000
s0_fire_color = #ff3305ff
s0_fire_mystical = true

[switcher]
s0_background_color = #333333d9

[expo]
s0_expo_key = <Control><Alt>s
s0_ground_color1 = #b3b3b3cc
s0_ground_color2 = #b3b3b300

[put]
s0_put_center_key = <Control><Alt>KP_Begin
s0_put_left_key = <Control><Alt>KP_Left
s0_put_right_key = <Control><Alt>KP_Right
s0_put_top_key = <Control><Alt>KP_Up
s0_put_bottom_key = <Control><Alt>KP_Down
s0_put_topleft_key = <Control><Alt>KP_Home
s0_put_topright_key = <Control><Alt>KP_Prior
s0_put_bottomleft_key = <Control><Alt>KP_End
s0_put_bottomright_key = <Control><Alt>KP_Next
s0_put_restore_key = <Control><Alt>KP_Insert
s0_put_pointer_key = <Control><Alt>z

[decor]
s0_active_shadow_color = #00000080
s0_inactive_shadow_color = #000000ff

[gnomecompat]
s0_main_menu_key = <Super>s
s0_command_window_screenshot = gnome-screenshot -w
s0_command_terminal = x-terminal-emulator
s0_run_command_terminal_key = <Control><Alt>t

[wall]
s0_thumb_highlight_gradient_shadow_color = #dfdfdfff
s0_arrow_base_color = #e6e6e6d9
s0_arrow_shadow_color = #dcdcdcd9

[unityshell]
s0_lock_screen = <Control><Alt>l
s0_show_desktop_key = <Control><Alt>d
s0_inactive_shadow_color = #000000a5
s0_show_launcher = Disabled
s0_launcher_switcher_forward = Disabled
s0_launcher_switcher_prev = Disabled
s0_launcher_minimize_window = true

[rotate]
s0_rotate_to_1_key = <Super>a
s0_rotate_to_2_key = <Super>b
s0_rotate_to_1_window_key = <Shift><Super>Home

[annotate]
s0_stroke_color = #ffa300ff

[composite]
s0_refresh_rate = 50

[staticswitcher]
s0_next_key = Disabled
s0_prev_key = Disabled
s0_background_color = #333333d9

[freewins]
s0_snap_threshold = 50
s0_circle_color = #54befb80
s0_line_color = #1800ffff
s0_cross_line_color = #1800ffff
" > ~/.config/compiz-1/compizconfig/unity.ini ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "Le script s'est déroulé correctement"
echo "*** Fin du script ***"




