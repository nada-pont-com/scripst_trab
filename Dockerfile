FROM ubuntu


WORKDIR /code

RUN dpkg-reconfigure tzdata

RUN echo "America/Sao_Paulo" > /etc/timezone
COPY ab.sh /code/ab.sh

RUN apt-get -y update
RUN apt-get -y install apache2

CMD ["ab.sh"]