###########################################################
#Docker image for uVNC Repeater
#
#Made by h963z57 7 Dec 2022
###########################################################


FROM debian:latest

COPY entrypoint.sh /entrypoint.sh

RUN touch /var/log/uvncrepeater.log \
  && echo "Start logfile" >> /var/log/uvncrepeater.log

RUN apt-get update \
  && apt-get install build-essential wget -y \
    && useradd -c 'UltraVNC Repeater User' -M -s /sbin/nologin uvncrep \
      && wget http://www.wisdomsoftware.gr/download/uvncrep017-ws.tar.gz \
      && tar -xzvf uvncrep017-ws.tar.gz && cd uvncrep017-ws \
      && make \
      && ./install.sh \
        && chmod a+x /entrypoint.sh

COPY uvncrepeater.ini /etc/uvnc/uvncrepeater.ini

EXPOSE 5500
EXPOSE 5901

ENTRYPOINT ["/entrypoint.sh"]
