# *** Table of Contents ***
# * 1. 
# * 

# ------------------ Setup DNF -----------------

dnf_setup () {
    # Make default dnf option yes 
    echo "defultyes=True" >> /etc/dnf/dnf.conf
    # Updateing and Upgrading Fedora 
    dnf -y update
    dnf -y upgrade

    # Adding Fusion Repos (Non-Foss Software) 
    dnf -y install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
    dnf -y install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

    # Adding _____ Repos
}

# ------------------ DNF Apps ------------------

install_dnf_apps () {
    # --------- Adding 3rd party repos ---------

    # Brave Browser
    dnf -y install dnf-plugins-core
    dnf -y config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
    rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

    # ------------------------------------------

    dnfApps=(
	"neovim" 			# Neovim
	"vim"				# Vim
	"zsh"			# zsh
	"htop"			# hop
	"gnome-system-monitor"	# Gnome System Monitor
	"gparted"		# Gparted
	"alacritty"		# Alacritty
	"virt-manager"		# Virtual Machine Manager
	"virt-viewer"		# Linux Virtaul Machine 
	"qemu-kvm"		# Linux Virtual Machine
	"ranger"		# Ranger File Manager
	"solaar"		# Solaar
	"python3"		# Python 3
	"java-latest-openjdk.x86_64" # Latest verson of openJDK
	"cmake"			# CMake
	"steam"			# Steam
	"brave-browser"		# Brave Browser
	"onedrive"		# Onedrive Client for Linux
    ) 
	
	allAppsDNF=""
    for app in ${dnfApps[@]}; do
        allAppsDNF+="${app} "
    done
	
	echo "$allAppsDNF"
	dnf -y install $allAppsDNF 
} 

# --------------- Flatpak Apps -----------------

install_flatpak_apps () {
	# Adds flathub repo
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    
    flatpakApps=(
    "com.spotify.Client" 			# Spotify
	"org.blender.Blender" 			# Blender
	"com.github.Eloston.UngoogledChromium" 	# Ungoogled Chromium
	"org.freecadweb.FreeCAD" 		# FreeCAD		
	"org.gimp.GIMP"				# Gimp
	"org.flameshot.Flameshot"		# Flameshot
	"io.mpv.Mpv" 				# MPV Media Player
	"net.ankiweb.Anki"			# Anki
	"com.github.marktext.marktext" 		# MarkText
	"com.github.tchx84.Flatseal"		# Flatseal
	"org.onlyoffice.desktopeditors"		# OnlyOffice
	"com.microsoft.Teams"			# Microsoft Teams
	"com.obsproject.Studio"			# OBS Studio
	"flathub org.signal.Signal"		# Signal
	"com.slack.Slack" 			# Slack
	"org.qbittorrent.qBittorrent" 		# qBittorrent
	"com.github.micahflee.torbrowser-launcher" # Tor Browser
	"io.typora.Typora" 			# Typora
	"org.videolan.VLC"			# VLC Media Player
	"us.zoom.Zoom" 				# Zoom
	"com.uploadedlobster.peek" 		# Peek
	"com.vscodium.codium"			# VSCodium
	"com.bitwarden.desktop"			# Bitwarden
	"com.usebottles.bottles" 		# Bottles
	"org.wireshark.Wireshark"		# Wireshark
	"com.github.xournalpp.xournalpp"	# Xournal++
	"md.obsidian.Obsidian" 			# Obsidian
	"com.discordapp.Discord"		# Discord
	"org.gnome.DejaDup"			# Déjà Dup Backups
    )

    gnomeFlatpaks=(
	"org.gnome.Extensions" # Gnome Extentions    

    )

	allAppsFlatpak=""
	for app in ${flatpakApps[@]}; do 
		allAppsFlatpak+="${app} "
	done

	echo "$allAppsFlatpak"	
	flatpak install flathub -y $allAppsFlatpak
} 

# ----------------- What to do -----------------

echo "What Distro are you running? (1. Fedora, 2. Ubuntu, or 3. Arch)"
read DISTRO

if (( $DISTRO == 1 )); then
	dnf_setup
	install_dnf_apps 
	install_flatpak_apps
fi 

