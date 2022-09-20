FROM ubuntu:18.04

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get clean
RUN apt update && apt-get upgrade -y
RUN apt-get install -y wget vim zip unzip curl gnupg
RUN apt install openjdk-8-jdk -y
RUN apt-get install wget dpkg -y
RUN apt-get install npm -y
RUN wget https://downloads.lightbend.com/scala/2.12.0/scala-2.12.0.deb
RUN dpkg -i scala-2.12.12.deb
RUN rm scala-2.12.12.deb


RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-get install curl -y
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update
RUN apt-get install sbt -y

RUN useradd -ms /bin/bash rafalkuzma
RUN adduser rafalkuzma sudo

EXPOSE 9000
EXPOSE 8888

USER rafalkuzma
WORKDIR /home/rafalkuzma/

RUN git clone https://github.com/YaoGuai1/Ebiznes.git
WORKDIR /home/rafalkuzma/ebiznes/shop

RUN sbt compile 

CMD sbt run
