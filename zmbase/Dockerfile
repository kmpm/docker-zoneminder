# ZoneMinder

#FROM ubuntu:trusty
FROM phusion/baseimage
MAINTAINER Kyle Johnson <kjohnson@gnulnx.net>

RUN rm -f /etc/service/sshd/down

# Regenerate SSH host keys. baseimage-docker does not contain any, so you
# have to do that yourself. You may also comment out this instruction; the
# init system will auto-generate one during boot.
# RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]


RUN mkdir /build

ADD packages.sh /build/packages.sh
RUN sh /build/packages.sh

ADD mysql /build/mysql
RUN sh /build/mysql/setup.sh

ADD apache2 /build/apache2
RUN sh /build/apache2/setup.sh

RUN rm -Rf /build

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

