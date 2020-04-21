# "ported" by Adam Miller <maxamillion@fedoraproject.org> from
#   https://github.com/fedora-cloud/Fedora-Dockerfiles
#
# Originally written for Fedora-Dockerfiles by
#   scollier <scollier@redhat.com>

FROM ubuntu
MAINTAINER baton0717 Project <baton0717@gmail.com>
# ENV LC_ALL en_US.UTF-8

COPY ./install.sh /
COPY ./start.sh /
RUN chmod 755 /install.sh
RUN chmod 755 /start.sh
RUN /install.sh
CMD /start.sh
