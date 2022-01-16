all:
	exec ./install-deps.sh
	exec ./copy-dotfiles.sh
	exec install-spotify-playerctl.sh
