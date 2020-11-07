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

echo "*** Gestion de l'interface par GSettings ***"
if sudo echo -e "[general_ubuntu]
backend = gsettings
profile = unity" > ~/.config/compiz-1/compizconfig/config ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Reset unity.ini ***"
if dconf reset -f /org/compiz/; setsid unity ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "Le script s'est déroulé correctement"
echo "*** Fin du script ***"
