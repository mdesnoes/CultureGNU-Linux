#!/bin/bash

echo "*** Mise à jour des configurations du noyau ***"
echo "*** Vous venez de finir vos nouvelles modifications ***"

echo "*** Compilation du noyau selon : .config ***"
if make -j 6 ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi
echo -e "\n"

echo "*** Compilation et installation des modules ***"
if sudo make modules_install ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi

echo "*** Copie des fichiers ***"
if sudo cp arch/x86/boot/bzImage /boot/vmlinuz-5.8.12-master2ACDI 
sudo cp System.map /boot/System.map-5.8.12-master2ACDI 
sudo cp .config /boot/config-5.8.12-master2ACDI ; then
    echo " ==> OK"
else    
    echo " ==> NOK"
    echo "*** Fin du script ***"
	exit 0
fi

echo "*** Mise à jour du GRUB ***"
if sudo update-grub2 ; then
	echo " ==> OK"
else
	echo " ==> NOK"
	echo "*** Fin du script ***"
	exit 0
fi


echo "Le script s'est déroulé correctement"
echo "*** Fin du script ***"