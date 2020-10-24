#!/bin/bash


echo "*** Sauvegarde du fichier lightdm.conf dans le fichier lightdm.conf_original ***"
if sudo cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf_original ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Installation du paquet lightdm-gtk-greeter ***"
if sudo apt-get install lightdm-gtk-greeter ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Création et écriture du fichier 50-no-guest.conf ***"
if sudo echo -e "[SeatDefaults]\nallow-guest=false" > /etc/lightdm/lightdm.conf.d/50-no-guest.conf ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Ecriture des configurations dans le fichier lightdm-gtk-greeter.conf ***"
if sudo echo -e "[greeter]\nbackground = /usr/share/backgrounds/160218-deux-two_by_Pierre_Cante.jpg\ntheme-name = HighContrast\nfont-name = Ubuntu 15\nindicators = ~host;~spacer;~clock;~spacer;~session;~separator;~a11y;~separator;~language;~separator;~power\nshow-language-selector = false\na11y-states = +reader;+keyboard\nposition = -50%,center\ndefault-user-image = #computer\nuser-background = false" > /etc/lightdm/lightdm-gtk-greeter.conf ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "Le script s'est déroulé correctement"
echo "*** Fin du script ***"



