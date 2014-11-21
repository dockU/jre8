FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN /usr/bin/pacman -Syu --needed --noconfirm tar
ADD https://aur.archlinux.org/packages/jr/jre/jre.tar.gz /tmp/jre.tar.gz

RUN /bin/tar -C /opt/ xf /tmp/jre.tar.gz

WORKDIR /opt/jre
RUN makepkg -si --asroot --noconfirm --needed
