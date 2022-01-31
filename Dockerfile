FROM ubuntu


WORKDIR /code


COPY ab.sh /code/ab.sh

RUN apt-get -y update
RUN apt-get -y install tzdata
RUN dpkg-reconfigure tzdata
RUN echo "America/Sao_Paulo" > /etc/timezone
RUN apt-get -y install apache2

CMD ["ab.sh"]