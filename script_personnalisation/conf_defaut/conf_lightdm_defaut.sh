#!/bin/bash


###############################################################################################################
# Pour remettre les configurations par défaut, on supprime les fichiers qui ont été créés puis  	      #
# on copie les configurations enregistrées dans le fichier lightdm.conf_original dans le fichier lightdm.conf #
# Si le fichier lightdm.conf_original n'existe pas, on réecrit le fichier lightdm.conf 			      #
###############################################################################################################

echo "*** Suppression du fichier /etc/lightdm/lightdm-gtk-greeter.conf ***"
if sudo rm /etc/lightdm/lightdm-gtk-greeter.conf ; then
	echo " ==> OK"
fi
echo -e "\n"

echo "*** Suppression des fichiers dans le dossier /etc/lightdm/lightdm.conf.d ***"
if sudo rm /etc/lightdm/lightdm.conf.d/* ; then
	echo " ==> OK"
fi
echo -e "\n"

if [ -e /etc/lightdm/lightdm.conf_original ] ; then
	echo -e "*** Le fichier /etc/lightdm/lightdm.conf_original existe ***\n"

	echo "*** Copie du fichier lightdm.conf_original dans le fichier lightdm.conf ***"
	if sudo cp /etc/lightdm/lightdm.conf_original /etc/lightdm/lightdm.conf ; then
		echo " ==> OK"
	else
		echo " ==> NOK"
		echo "*** Fin du script ***"
		exit 0
	fi
else
	echo -e "*** Le fichier /etc/lightdm/lightdm.conf_original n'existe pas ***\n"

	echo "*** Création et écriture des configurations dans le fichier lightdm.conf ***"
	if sudo echo -e "[Seat:*]\nautologin-guest=false\nautologin-user=oem\nautologin-user-timeout=0" > /etc/lightdm/lightdm.conf ; then
		echo " ==> OK"
	else
		echo " ==> NOK"
		echo "*** Fin du script ***"
		exit 0
	fi
fi
echo -e "\n"


echo "Le script s'est déroulé correctement"
echo "*** Fin du script ***"


