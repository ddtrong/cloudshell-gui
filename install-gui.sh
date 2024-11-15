#!/bin/bash
sudo apt update
sudo apt install xvfb xfce4 xserver-xorg-video-dummy policykit-1 xbase-clients python3-psutil python3-xdg libgbm1 libutempter0 dbus-x11 --assume-yes
# Download Chrome Remote Desktop, install it, then delete downloaded .deb package
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg -i chrome-remote-desktop*
sudo apt --fix-broken install --assume-yes
rm chrome-remote-desktop*
rm -rf firefox firefox.tbz
wget -o firefox.tbz "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US"
tar xf firefox.tbz
