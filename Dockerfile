FROM ubuntu:latest

RUN apt update && apt install --yes openjdk-11-jre openjdk-11-jdk wget unzip
RUN wget https://github.com/owlcms/owlcms4/releases/download/4.12.0/owlcms.zip 
RUN mkdir owlcms && unzip owlcms.zip -d owlcms && mv owlcms/ /opt/
WORKDIR /opt/owlcms

CMD java -jar owlcms.jar

