#!/usr/bin/sh

sudo zypper rm pcmanfm-qt falkon qterminal
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
sudo rm /etc/xdg/autostart/nm-applet.desktop
