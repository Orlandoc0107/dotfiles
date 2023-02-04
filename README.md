# dotfiles-archlinux

- Muchisimas gracias a la Comunidad linuxera

Nota : Los doffiles estan personalizados, claramente se puede modificar o editar una vez instales . 

La scrip se debe ejecutar despues de instalar los siguientes complementos necesatios para ejecutar Archlinux
talez como : base base-devel linux linux-firware efibootmgr 

Recomendaciones : Descargar laimagen ISO de ArchLinux en lapagina oficial https://archlinux.org/ 

uan vez que logres bootear tu sistema puedes hacer una isntalacion automatica ejecutando archinstall

Video 1 

https://youtu.be/JjMdSukK3k4



importante no tener otro gestor de inicio de seccion preinstalado asi te ahorraras un dolor de cabezas

compartible con ArchLinux

para usar instalacion automatica descargue instalar.sh con git 

sudo pacman -S git

* instalar.sh 

git clone https://github.com/Orlandoc0107/dotfiles-archlinux.git 

cd dotfiles-archlinux
sudo chmod+x 
./instalar.sh

Listado de las aplicaciones que se instaaran automaticamente ( si desean remover alguna aplicacion lo pueden hacer con {Pacman -R Nombre-Del-Paquete})

Pacman -S git lightdm lightdm-gtk-greeter dhcpcd networkmanager kitty xterm lsd bat xorg xorg-apps xorg-xinit xorg-twm xorg-xclock pulseaudio pavucontrol arc-gtk-theme arc-icon-theme code nano vim kate firefox lynx w3m neofetch lsb-release bspwm sxhkd dmenu polybar flex imagemagick lxappearance nitrogen picom rofi thunar thunar-volman udiskie spotify-launcher android-file-transfer android-tools android-udev msmtp libmtp libcddb gvfs gvfs-afc gvfs-smb gvfs-gphoto2 gvfs-mtp gvfs-goa gvfs-nfs gvfs-google dosfstools jfsutils f2fs-tools btrfs-progs exfat-utils ntfs-3g reiserfsprogs udftools xfsprogs nilfs-utils polkit gpart mtools ark xarchiver unarchiver binutils gzip lha lrzip lzip lz4 p7zip tar xz bzip2 p7zip lbzip2 arj lzop cpio unrar unzip zstd zip lzip unarj zstd sudo pacman -S ffmpeg aom libde265 x265 x264 libmpeg2 xvidcore libtheora libvpx schroedinger sdl gstreamer gst-plugins-bad gst-plugins-base gst-plugins-base-libs gst-plugins-good gst-plugins-ugly xine-lib libdvdcss libdvdread dvd+rw-tools lame vlc 



yay -S backlight_control 
