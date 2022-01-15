#!/usr/bin/sh

cr="\033[1;31m"
cg="\033[1;32m"
cb="\033[1;34m"

printf "${cg}[*] Proceeding will remove all previously created dotfiles.\n"
printf "${cr}"
read -p "[*] DO YOU WANT TO PROCEED [Y/N] " allowed
dir="$HOME/.config $HOME/.icons"

case $allowed do
	Y*|y*)
		for d in $dir; do
			mkdir -p $d
		done

		printf "${cg}Copying dotfiles\n"

		printf "${cb}  Copying configs\n"
		cp -r config/* ~/.config
		cp .gtkrc-2.0 ~/
		cp .picom.conf ~/
		cp .Xdefaults ~/
		printf "${cg}  Configs copied\n"

		printf "${cb}  Copying wallpapers\n"
		sudo cp usr/share/wallpapers/northern-lights.jpg /usr/share/wallpapers
		sudo cp etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
		printf "${cg}  Wallpapers copied"

		printf "${cg}Dotfiles copied\n"
	*)
		printf "${cr}Aborted\n"
esac
