#!/bin/bash

echo "*** Installation du fond d'écran Kubuntu ***"
if sudo apt-get install plymouth-theme-kubuntu-logo ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Modification des permissions d'accès au fichier plymouth ***"
if sudo chmod 777 /usr/share/plymouth/themes/default.plymouth ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Modification du fond d'écran de démarrage ***"
if sudo echo -e "[Plymouth Theme]
Name=Kubuntu Logo
Description=A theme that features a blank background with a logo.
ModuleName=script

[script]
ImageDir=/usr/share/plymouth/themes/kubuntu-logo
ScriptFile=/usr/share/plymouth/themes/kubuntu-logo/kubuntu-logo.script" > /usr/share/plymouth/themes/default.plymouth ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Refresh ***"
if sudo update-initramfs -u ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "Le script s'est déroulé correctement"
echo "*** Fin du script ***"




