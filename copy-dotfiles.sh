#!/usr/bin/sh

shopt -s dotglob

cr="\033[1;31m"
cg="\033[1;32m"
cb="\033[1;34m"

printf "${cg}[*] Proceeding will remove all previously created dotfiles.\n"
printf "${cr}"
read -p "[*] DO YOU WANT TO PROCEED [Y/N] " allowed
dir="$HOME/.config $HOME/.icons/default"

case $allowed in
	Y*|y*)
		for d in $dir; do
			mkdir -p $d
		done

		printf "${cg}Copying dotfiles\n"

		printf "${cb}  Copying configs\n"
		cp -rf .config/* ~/.config
		cp -rf .icons/default/* ~/.icons/default
		cp -f .gtkrc-2.0 ~/
		cp -f .picom.conf ~/
		cp -f .Xdefaults ~/
		sudo cp -f etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
		sudo cp -f usr/share/icons/opensuse-chameleon.png /usr/share/icons
		printf "${cg}  Configs copied\n"

		printf "${cb}  Copying wallpapers\n"
		sudo cp -f usr/share/wallpapers/northernlights.jpg /usr/share/wallpapers
		sudo cp -f usr/share/wallpapers/leaves.jpg /usr/share/wallpapers
		printf "${cg}  Wallpapers copied\n"

		printf "${cg}Dotfiles copied\n"

		;;
	*)
		printf "${cr}Aborted\n"
esac
