FROM ubuntu:20.04


RUN apt-get update -y
RUN apt-get upgrade -y
#install curl

RUN apt-get install -y \
    ca-certificates 

RUN apt-get install -y \
    software-properties-common \
    curl 
RUN apt-get install -y \
    vim \
    postgresql postgresql-contrib


# install java
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        openjdk-11-jre

#install MAVEN
RUN apt-get install maven -y 

#install ansible

RUN  apt update -y 
RUN     apt install -y python3-pip 

RUN pip3 install pywinrm \
                pyvmomi \
                ansible \
                kubernetes
  

WORKDIR /home

COPY files/kubectl /usr/local/bin/kubectl
COPY files/ddca-prod-fra_c53p167.kubeconfig ./
COPY files/ddca-dev-fra_c51p088.kubeconfig ./

EXPOSE 8080


CMD ["/bin/bash"]
