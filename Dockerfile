FROM ubuntu

WORKDIR /code

COPY ab.sh /code/ab.sh
COPY /etc/timezone /etc/timezone

RUN apt-get -y update
RUN apt-get -y install apache2

CMD ["ab.sh"]