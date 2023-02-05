#!/bin/bash
# Autor : Orlandoc0107
# Instlacion automatica de mi configuracion
clear
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "_________________________________________________________________________________________"	
echo "|#######                                                    ###     #     ###   ####### |" 
echo "|#     # #####  #        ##   #    # #####   ####   ####   #   #   ##    #   #  #    #  |"  
echo "|#     # #    # #       #  #  ##   # #    # #    # #    # #     # # #   #     #     #   |"   
echo "|#     # #    # #      #    # # #  # #    # #    # #      #     #   #   #     #    #    |"    
echo "|#     # #####  #      ###### #  # # #    # #    # #      #     #   #   #     #   #     |"     
echo "|#     # #   #  #      #    # #   ## #    # #    # #    #  #   #    #    #   #    #     |"     
echo "|####### #    # ###### #    # #    # #####   ####   ####    ###   #####   ###     #     |"
echo "|_______________________________________________________________________________________|"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo "----"
echo " Presione otra Tecla para Continuar "
read
clear
############ 
cd $HOME
echo "Preparando instalacion de yay"
sudo pacman -S git --noconfirm --needed
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm --needed
echo "Instalacion de yay completada"
clear
#gestor de Inicio de seccion
cd $HOME
echo "Instalacion del gestor de inicio de seccion Lightdm"
sudo pacman -S lightdm lightdm-gtk-greeter --noconfirm --needed 
echo "Instalacion del gestor completada "
echo "configurando"
pwd
cd $HOME
cd dotfiles
cd .config
cd lightdm 
sudo cp lightdm.conf /etc/lightdm/
##############################
clear
cd $HOME
pwd 
echo "ATENCION !"
echo "Habilitando el Gestor lightdm asegurese de no tener otro gestor habilitado"
echo "use este comando para desactivar el otro gestor si tiene problemas"
echo "ejemplo sudo systemctl disable nombre-de-la-aplicacion.service"
echo "Presione una tecla para continuar"
read 
sudo systemctl enable lightdm.service 
echo "Para prevenir cualquier error porfavor Habilite manualmente el Lighthm.service Manualmente"
echo "Ingrese el siguiente comando sin los simbolos #, con permisos root "
echo "# systemctl enable lightdm.service #"
read  
echo "Presione otra tecla para continuar "
echo " Systemctl habilito el gestor Lightdm "
# intalacion de networkManager
echo "Asegurando la coneccion wifi" 
sudo pacman -S dhcpcd networkmanager --noconfirm --needed
sudo systemctl enable dhcpcd 
sudo systemctl enable NetworkManager
sudo systemctl start dhcpcd 
sudo systemctl start NetworkManager 
clear 
echo "Presione una tecla para continuar"
read 
echo "Servicios Habilitado"
echo "se usar nmcli"
nmcli device wifi list
echo "|--------------------------------------------------------|"
echo "|  Ingrese el nombre de la red Wifi que desea conectarse |"
echo "|________________________________________________________|"
read nombredered
echo "|--------------------------------------------------------|"
echo "|           Ingrese el la contrasena de la clave         |"
echo "|________________________________________________________|"
read clave
echo "|--------------------------------------------------------|"
nmcli dev wifi connect $nombredered password $clave
echo ""
echo "Presione una tecla para continuar."
read
clear 
# instalando aplicaciones
echo "|--------------------------------------------------------|"
echo "|   Instalando Emuladores de Terminales Kitty y Xterm    |"
echo "|--------------------------------------------------------|"
sudo pacman -S kitty xterm lsd bat --noconfirm --needed
clear 
echo "|--------------------------------------------------------|"
echo "|            asegurando la instlacion de xorg            |"
echo "|--------------------------------------------------------|"
sudo pacman -S xorg xorg-apps xorg-xinit xorg-twm xorg-xclock --noconfirm --needed
clear
echo "|--------------------------------------------------------|"
echo "|           Instalando PulseAudio y Pavucontrol          |"
echo "|--------------------------------------------------------|"
sudo pacman -S pulseaudio pavucontrol --noconfirm --needed
clear 
echo "|--------------------------------------------------------|"
echo "|                Themes Incoos Arch Linux                |"
echo "|--------------------------------------------------------|"
sudo pacman -S arc-gtk-theme arc-icon-theme --noconfirm --needed
clear 
echo "|--------------------------------------------------------|"
echo "|     Cuida de ojos , Instalando Backlight_Control       |"
echo "|--------------------------------------------------------|"
yay -S backlight_control 
clear
echo "|--------------------------------------------------------|"
echo "|                  Instalando Editores                   |"
echo "|--------------------------------------------------------|"
echo "Intalando Editores"
sudo pacman -S code nano vim  --noconfirm --needed
echo "Instlando Terminal de kate"
clear
echo "|--------------------------------------------------------|"
echo "|        Instalando Kate y sus Dependencias              |"
echo "|--------------------------------------------------------|"
sudo pacman -S kate
echo "|--------------------------------------------------------|"
echo "|        Instalando Kate y sus Dependencias              |"
echo "|--------------------------------------------------------|"
sudo pacman -S knsole
echo "|--------------------------------------------------------|"
echo "|        Instalando Kate y sus Dependencias              |"
echo "|--------------------------------------------------------|"
sudo pacman -S clang
echo "|--------------------------------------------------------|"
echo "|        Instalando Kate y sus Dependencias              |"
echo "|--------------------------------------------------------|"
sudo pacman -S markdownpart
echo "|--------------------------------------------------------|"
echo "|        Instalando Kate y sus Dependencias              |"
echo "|--------------------------------------------------------|"
sudo pacman -S python-lsp-server 
echo "|--------------------------------------------------------|"
echo "|        Instalando Kate y sus Dependencias              |"
echo "|--------------------------------------------------------|"
sudo pacman -S rust
echo "|--------------------------------------------------------|"
echo "|        Instalando Kate y sus Dependencias              |"
echo "|--------------------------------------------------------|"
sudo pacman -S svgpart
echo "|--------------------------------------------------------|"
echo "|        Instalando Kate y sus Dependencias              |"
echo "|--------------------------------------------------------|"
sudo pacman -S texlab
echo "|--------------------------------------------------------|"
echo "|        Instalando Kate y sus Dependencias              |"
echo "|--------------------------------------------------------|"
sudo pacman -S extra-cmake-modules
echo "|--------------------------------------------------------|"
echo "|        Instalando Kate y sus Dependencias              |"
echo "|--------------------------------------------------------|"
sudo pacman -S kdoctools 
echo "|--------------------------------------------------------|"
echo "|     Instalando Kate y sus Dependencias Finalizada      |"
echo "|--------------------------------------------------------|"
clear
echo " Instalando Navegadores de internet"
echo "|--------------------------------------------------------|"
echo "|               Instalando Firefox lynx w3m              |"
echo "|--------------------------------------------------------|"
sudo pacman -S firefox lynx w3m --noconfirm --needed
clear 
echo "|--------------------------------------------------------|"
echo "|                    Instalando Neofetch                 |"
echo "|--------------------------------------------------------|"
sudo pacman -S neofetch lsb-release --noconfirm --needed
clear 
neofetch 
echo "Presione alguna tecla para continuar ..."
read 
clear
#Instalacion de BSPWM
echo "|--------------------------------------------------------|"
echo "|                       BSPWM                            |"
echo "|--------------------------------------------------------|"
sudo pacman -S bspwm sxhkd --noconfirm
sudo pacman -S sxhkd --noconfirm 
sudo pacman -S polybar --noconfirm 
sudo pacman -S dmenu --noconfirm 
sudo pacman -S flex imagemagick lxappearance nitrogen picom rofi thunar thunar-volman udiskie --noconfirm
echo 
echo "|--------------------------------------------------------|"
echo "|                        Spotify                         |"
echo "|--------------------------------------------------------|"
echo "Instalando Spotify"
sudo pacman -S spotify-launcher --noconfirm
echo "----------------------------------"
clear
echo "|--------------------------------------------------------|"
echo "|           Instalando Formatos de discos                |"
echo "|--------------------------------------------------------|"
echo "Grcias a Codigo Cristo por la recopilacion de las extensiones que debe ser instaladas "
sudo pacman -S android-file-transfer android-tools android-udev msmtp libmtp libcddb gvfs gvfs-afc gvfs-smb gvfs-gphoto2 gvfs-mtp gvfs-goa gvfs-nfs gvfs-google dosfstools jfsutils f2fs-tools btrfs-progs exfat-utils ntfs-3g reiserfsprogs udftools xfsprogs nilfs-utils polkit gpart mtools --noconfirm --needed
clear
echo "|--------------------------------------------------------|"
echo "|         Instalando Compresion y Descompresion          |"
echo "|--------------------------------------------------------|"
echo "Instalando Compresion y Descompresion "
sudo pacman -S ark xarchiver unarchiver binutils gzip lha lrzip lzip lz4 p7zip tar xz bzip2 p7zip lbzip2 arj lzop cpio unrar unzip zstd zip lzip unarj zstd --noconfirm --needed 
clear 
echo "|--------------------------------------------------------|"
echo "|    Instalando Codecs de Videos + Reproductor VLC       |"
echo "|--------------------------------------------------------|"
echo "Instalando Codecs de Videos"
sudo pacman -S ffmpeg aom libde265 x265 x264 libmpeg2 xvidcore libtheora libvpx schroedinger sdl gstreamer gst-plugins-bad gst-plugins-base gst-plugins-base-libs gst-plugins-good gst-plugins-ugly xine-lib libdvdcss libdvdread dvd+rw-tools lame --noconfirm --needed 
sudo pacman -S vlc --noconfirm --needed
clear 
################################
#Dotfiles
echo "|--------------------------------------------------------|"
echo "|        Instalando y Configurando los Dotfiles          |"
echo "|--------------------------------------------------------|"
################################
pwd
cd $HOME
touch .xprofile
echo "udiskie &" >> .xprofile
echo "sxhkd &" >> .xprofile
echo "picom &" >> .xprofile
echo "nitrogen --restore &" >> .xprofile
echo "exec baspwm" >> .xprofile
echo "cbattiocon &" >> .xprofile
#################################
cd $HOME
pwd
mkdir .config
cd .config
pwd
mkdir bspwm
mkdir polybar
mkdir sxhkd
mkdir nitrogen
mkdir fondos
mkdir kitty
#
cd $HOME
cd dotfiles
cd .config
cd bspwm 
cp bspwmrc $HOME/.config/bspwm
#
cd $HOME
cd dotfiles
cd .config
cd polybar
cp config.ini $HOME/.config/polybar
#
cd $HOME
cd dotfiles
cd .config
cd sxhkd 
cp sxhldrc $HOME/.config/sxhkf
#
cd $HOME
cd dotfiles
cd .config
cd nitrogen 
cp bg-saved.cfg $HOME/.config/nitrogen
cp nitrogen.cfg $HOME/.config/nitrogen 
#
cd $HOME
cd dotfiles
cd .config
cd fondos
cp fondo1.jpg $HOME/.config/fondos
#
cd $HOME
cd dotfiles
cd .config
cd kitty
cp kitty.conf $HOME/.config/kitty
#
cd $HOME
cd dotfiles
cd .config
cd Adwaita
sudo cp cursors/* /usr/share/icons/Adwaita/cursors/
#
cd /
cd usr
cd share
cd fonts
mkdir Terminus
cd $HOME
cd dotfiles
cd .config
sudo cp Terminus/* /usr/share/fonts/Terminus/

clear
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo "Configuracion finalizada"
echo "_________________________________________________________________________________________"	
echo "|#######                                                    ###     #     ###   ####### |" 
echo "|#     # #####  #        ##   #    # #####   ####   ####   #   #   ##    #   #  #    #  |"  
echo "|#     # #    # #       #  #  ##   # #    # #    # #    # #     # # #   #     #     #   |"   
echo "|#     # #    # #      #    # # #  # #    # #    # #      #     #   #   #     #    #    |"    
echo "|#     # #####  #      ###### #  # # #    # #    # #      #     #   #   #     #   #     |"     
echo "|#     # #   #  #      #    # #   ## #    # #    # #    #  #   #    #    #   #    #     |"     
echo "|####### #    # ###### #    # #    # #####   ####   ####    ###   #####   ###     #     |"
echo "|_______________________________________________________________________________________|"
echo " "
read
echo "Preione una tecla para Reiniciar el Sistema "
reboot 
