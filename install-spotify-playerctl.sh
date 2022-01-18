#!/usr/bin/sh

sudo zypper addrepo --refresh https://download.opensuse.org/repositories/system:/snappy/openSUSE_Tumbleweed snappy
sudo zypper --gpg-auto-import-keys refresh
sudo zypper dup --from snappy
sudo zypper install snapd
sudo systemctl enable snapd
sudo systemctl start snapd
sudo systemctl enable snapd.apparmor
sudo systemctl start snapd.apparmor
sudo snap install spotify playerctl
