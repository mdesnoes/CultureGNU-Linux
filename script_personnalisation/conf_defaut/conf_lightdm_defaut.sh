#!/bin/bash



echo "*** Réécriture du fichier lightdm-gtk-greeter.conf ***"
if sudo echo -e "[greeter]\nbackground = /usr/share/backgrounds/160218-deux-two_by_Pierre_Cante.jpg\nicon-theme-name = default\nfont-name = Ubuntu 13\nindicators = ~host;~spacer;~session;~a11y;~language;~clock;~power\nshow-language-selector = false\na11y-states = +reader;+keyboard\nposition = -63%,end -45%,center\ndefault-user-image = #" > /etc/lightdm/lightdm-gtk-greeter.conf ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi


echo "Le script s'est déroulé correctement"
echo "*** Fin du script ***"


