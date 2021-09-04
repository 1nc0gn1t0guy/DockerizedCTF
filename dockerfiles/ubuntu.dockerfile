#pepe -> admin -> root
#/home/pepe/flag1 -> /home/admin/flag2 -> flag3
FROM rastasheep/ubuntu-sshd

#create the new user
#this user is used for pivoting to the admin user
RUN useradd -m pepe -s /bin/bash
RUN echo "pepe:iloveyou" | chpasswd

#Set language and keyboard to Spanish
RUN echo "LC_ALL=es_ES.UTF-8" >> /etc/environment
RUN echo "es_ES.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=es_ES.UTF-8" > /etc/locale.conf
RUN echo '* libraries/restart-without-asking boolean true'

RUN apt-get update -y
RUN apt-get install vim -y
RUN apt-get install sudo -y

#find / -perm /4000
#python3.6 -c 'import os; os.setuid(0); os.system("/bin/sh")'

RUN chmod u+s /usr/bin/python3.6


WORKDIR /importantinfo
COPY flagpepe.txt .
COPY flagroot.txt .
RUN chown -cR pepe. /importantinfo/flagpepe.txt
RUN chown -cR root. /importantinfo/flagroot.txt
RUN chmod 400 /importantinfo/flagroot.txt

WORKDIR /home/pepe