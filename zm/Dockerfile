# ZoneMinder

#FROM ubuntu:trusty
FROM mine/zmbase 
MAINTAINER Peter Magnusson <peter@birchroad.net>

# Copy local code into our container
ADD . /ZoneMinder

# Change into the ZoneMinder directory
WORKDIR /ZoneMinder

# Setup the ZoneMinder build environment
RUN aclocal && autoheader && automake --force-missing --add-missing && autoconf

# Configure ZoneMinder
RUN ./configure --with-libarch=lib/$DEB_HOST_GNU_TYPE --disable-debug --host=$DEB_HOST_GNU_TYPE --build=$DEB_BUILD_GNU_TYPE --with-mysql=/usr  --with-webdir=/var/www/zm --with-ffmpeg=/usr --with-cgidir=/usr/lib/cgi-bin --with-webuser=www-data --with-webgroup=www-data --enable-mmap=yes ZM_SSL_LIB=openssl ZM_DB_USER=zm ZM_DB_PASS=zm

# Build ZoneMinder
RUN make

# Install ZoneMinder
RUN make install


# Adding the start script
RUN mkdir -p /etc/service/zoneminder
ADD utils/docker/start-zm.sh /etc/service/zoneminder/run
RUN chmod +x /etc/service/zoneminder/run 

# Adding apache virtual hosts file
ADD utils/docker/apache-vhost /etc/apache2/sites-enabled/000-default

# Clean up APT when done.
#RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set the root passwd
#RUN echo 'root:root' | chpasswd

# Expose ssh and http ports
EXPOSE 80
#EXPOSE 22

