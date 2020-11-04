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


echo "*** Sauvegarde du fichier unity.ini dans le fichier unity_original.ini ***"
if sudo cp ~/.config/compiz-1/compizconfig/unity.ini ~/.config/compiz-1/compizconfig/unity_original.ini ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Ecriture des configurations dans le fichier unity.ini ***"
if sudo echo -e "[core]
s0_active_plugins = core;composite;opengl;place;wall;move;commands;copytex;mousepoll;firepaint;snap;session;vpswitch;grid;imgpng;resize;compiztoolbox;regex;animation;unitymtgrabhandles;workarounds;expo;fade;scale;ezoom;unityshell;
s0_outputs = 1920x1080+0+0;

[composite]
s0_refresh_rate = 50" > ~/.config/compiz-1/compizconfig/unity.ini ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Reset unity.ini ***"
if dconf reset -f /org/compiz/; setsid unity
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "Le script s'est déroulé correctement"
echo "*** Fin du script ***"




