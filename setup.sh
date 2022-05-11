# ------------------ Setup DNF -----------------

dnf_setup () {
    # Updateing and Upgrading Fedora 


    # Adding Fusion Repos (Non-Foss Software) 


    # Adding _____ Repos
}

# ------------------ DNF Apps ------------------

install_dnf_apps () {
    # --------- Adding 3rd party repos ---------

    # Brave Browser
    dnf install dnf-plugins-core
    dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
    rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc


    dnfApps = (
	"vim" 			# vim
	"nvim" 			# Neovim
	'zsh'			# zsh
	'htop'			# hop
	'gnome-system-monitor'	# Gnome System Monitor
	'gparted'		# Gparted
	'alacritty'		# Alacritty
	'virt-manager'		# Virtual Machine Manager
	'virt-viewer'		# Linux Virtaul Machine 
	'qemu-kvm'		# Linux Virtual Machine
	'python-virinst'	# Linux Virtual Machine
	'ranger'		# Ranger File Manager
	'solaar'		# Solaar
	'python3'		# Python 3
	'java-latest-openjdk.x86_64' # Latest verson of openJDK
	'cmake'			# CMake
	'steam'			# Steam
	'brave-browser'		# Brave Browser
    ) 
} 

# --------------- Flatpak Apps -----------------

install_flatpak_apps () {
    flatpakApps = (
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
	"org.libreoffice.LibreOffice"		# LibreOffice
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
	'org.gnome.DejaDup'			# Déjà Dup Backups
    )

    gnomeFlatpaks = (
	"org.gnome.Extensions" # Gnome Extentions    

    )
} 
