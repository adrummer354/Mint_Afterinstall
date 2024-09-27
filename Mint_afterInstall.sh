#!/bin/bash
######
# Personal Mint 21 afterinstall script
# Comment out lines/sections you do not want with #

echo "Starting afterInstall script"

# Uninstall Hexchat
echo "sudo apt purge 'hexchat*'"
sudo apt purge 'hexchat*'

# Uninstall Redshift-gtk
echo "sudo apt purge redshift-gtk"
sudo apt purge 'redshift-gtk*'

# Uninstall Hypnotix 
echo "sudo apt purge ''hyponotix*"
sudo apt purge ''hypnotix*''

# Install numlockx
echo "sudo apt install numlockx"
sudo apt install numlockx

# Install GParted
echo "sudo apt install gparted"
sudo apt install gparted

# Uninstall old LibreOffice. Install new flatpak LibreOffice
echo "sudo apt purge 'libreoffice*' liblibreoffice-java"
sudo apt purge 'libreoffice*' liblibreoffice-java 
echo "flatpak install org.libreoffice.LibreOffice"
flatpak install org.libreoffice.LibreOffice

# Uninstall rhythmbox
echo "sudo apt purge 'rhythmbox*'"
sudo apt purge 'rhythmbox*'

# Uninstall celluloid
echo "sudo apt purge celluloid"
sudo apt purge celluloid

#Install Papirus Folders
echo "sudo add-apt-repository ppa:papirus/papirus"
sudo apt-get update
sudo apt-get install papirus-folders
sudo apt-get upgrade

#Change Papirus Dark Folder Color
echo "papirus-folders -C breeze --theme Papirus-Dark"
sudo papirus-folders -C breeze --theme Papirus-Dark

# Install Audacity
echo "sudo apt install audacity"
sudo apt install audacity

# Install nemo-media-columns
echo "sudo apt install nemo-media-columns"
sudo apt install nemo-media-columns

# Install curl
echo "sudo apt install curl"
sudo apt install curl

# Install GIMP
echo "sudo apt install gimp"
sudo apt install gimp

# Install Steam
echo "Downloading steam.deb to /tmp"
wget -O /tmp/steam.deb https://cdn.akamai.steamstatic.com/client/installer/steam.deb
echo "sudo apt install /tmp/steam.deb"
sudo apt install /tmp/steam.deb

# Install Brave Nightly
echo "Downloading brave nightly keyring"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg] https://brave-browser-apt-nightly.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-nightly.list
sudo apt update
sudo apt install brave-browser-nightly

# Install Signal 
# 1. Install our official public software signing key:
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# 2. Add our repository to your list of repositories:
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
sudo tee /etc/apt/sources.list.d/signal-xenial.list

# 3. Update your package database and install Signal:
sudo apt update && sudo apt install signal-desktop


#Install PAVUControl
echo 'sudo apt install pavucontrol -y'
sudo apt install pavucontrol -y

#Install Blanket
echo "sudo flatpak install flathub com.rafaelmardojai.Blanket"
sudo flatpak install flathub com.rafaelmardojai.Blanket

#Install Joplin
echo "wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash"
sudo wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

#Install Flatseal
echo "sudo flatpak install flathub com.github.tchx84.Flatseal"
sudo flatpak install flathub com.github.tchx84.Flatseal

#Install Stawberry Music Player
echo "sudo flatpak install flathub org.strawberrymusicplayer.strawberry"
sudo flatpak install flathub org.strawberrymusicplayer.strawberry

#Install Bitwarden
echo "sudo flatpak install flathub com.bitwarden.desktop"
sudo flatpak install flathub com.bitwarden.desktop

#Install ytDownloader
echo "sudo flatpak install flathub io.github.aandrew_me.ytdn"
sudo flatpak install flathub io.github.aandrew_me.ytdn

#Install SpaceCadet Pinball
echo "sudo flatpak install flathub com.github.k4zmu2a.spacecadetpinball"
sudo flatpak install flathub com.github.k4zmu2a.spacecadetpinball

#Install KPatience 
echo "sudo flatpak install flathub org.kde.kpat"
sudo sudo flatpak install flathub org.kde.kpat

#Install Celluloid 
echo "sudo flatpak install flathub io.github.celluloid_player.Celluloid"
sudo sudo flatpak install flathub io.github.celluloid_player.Celluloid

#Install WebCord
echo "sudo flatpak install flathub io.github.spacingbat3.webcord"
sudo flatpak install flathub io.github.spacingbat3.webcord

#Install Ungoogled Chromium
echo "sudo flatpak install flathub io.github.ungoogled_software.ungoogled_chromium"
sudo flatpak install flathub io.github.ungoogled_software.ungoogled_chromium

#Install Remmina
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt update
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret
sudo killall remmina

#Install OBS Studio 
echo sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install ffmpeg obs-studio 

#Disable Geolocation service
echo sudo systemctl mask geoclue.service
sudo systemctl mask geoclue.service

# Remove no longer needed ependencies
echo "Removing no longer needed dependencies"
echo "sudo apt autoremove"
sudo apt autoremove

