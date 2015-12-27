#/usr/bin/env bash


# Let the container know that there is no tty
export DEBIAN_FRONTEND=noninteractive

# Resynchronize the package index files 
apt-get update && apt-get install -y \
	libpolkit-gobject-1-dev build-essential libmysqlclient-dev libssl-dev libbz2-dev libpcre3-dev \
	libdbi-perl libarchive-zip-perl libdate-manip-perl libdevice-serialport-perl libmime-perl libpcre3 \
	libwww-perl libdbd-mysql-perl libsys-mmap-perl yasm automake autoconf libjpeg-turbo8-dev \
	libjpeg-turbo8 libtheora-dev libvorbis-dev libvpx-dev libx264-dev libmp4v2-dev libav-tools mysql-client \
	apache2 php5 php5-mysql apache2-mpm-prefork libapache2-mod-php5 php5-cli openssh-server \
	mysql-server libvlc-dev libvlc5 libvlccore-dev libvlccore7 vlc-data libcurl4-openssl-dev \
	libavformat-dev libswscale-dev libavutil-dev libavcodec-dev libavfilter-dev \
	libavresample-dev libavdevice-dev libpostproc-dev libv4l-dev libtool libnetpbm10-dev \
	libmime-lite-perl dh-autoreconf dpatch



