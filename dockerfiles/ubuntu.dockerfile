#pepe -> admin -> root
#/home/pepe/flag1 -> /home/admin/flag2 -> flag3
FROM rastasheep/ubuntu-sshd

#create the new user
#this user is used for pivoting to the admin user
RUN adduser --disabled-password --gecos '' pepe \
&& echo "pepe:pepeadmin" | chpasswd 
#this user is able to auth as root
RUN adduser --disabled-password --gecos '' admin \
&& echo "admin:R0b0t1cs!" | chpasswd 

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
&& apt-get install sudo -y \
&& apt-get install nmap -y