FROM rastasheep/ubuntu-sshd

#create the new user
RUN adduser --disabled-password --gecos '' user \
&& echo "user:userpass" | chpasswd 

#Set language and keyboard to Spanish
RUN echo "LC_ALL=es_ES.UTF-8" >> /etc/environment
RUN echo "es_ES.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=es_ES.UTF-8" > /etc/locale.conf
RUN echo '* libraries/restart-without-asking boolean true'

#Update the machine
RUN apt-get update -y \ 
&& apt-get install -qqy \
&& apt-get install dialog apt-utils -y \
&& apt-get install -y man less \
&& apt-get install curl -y \
&& apt-get install software-properties-common -y \
&& apt-get install sudo -y 

#Run this in the container after logging in with "docker build -t --privileged=true test .""
#RUN /usr/bin/dockerd -H unix:///var/run/docker.sock > dockerd.log 2>&1&

