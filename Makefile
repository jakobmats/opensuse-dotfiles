all:
	exec ./install-deps.sh
	exec ./copy-dotfiles.sh
	exec ./additional-setup.sh
	exec ./install-spotify-playerctl.sh
