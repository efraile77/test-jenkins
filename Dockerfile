FROM ubuntu:20.04


RUN apt-get update -y
RUN apt-get upgrade -y
#install curl

RUN apt-get install -y \
  #  apt-transport-https \
    ca-certificates \
    software-properties-common \
    curl \
    vim \
    postgresql postgresql-contrib


# install java
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        openjdk-11-jre

#install MAVEN
RUN apt-get install maven -y 


   

WORKDIR /home


EXPOSE 8080


CMD ["bash"]
