FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt -y upgrade
RUN apt -y install python3-pip gcc vim libkrb5-dev krb5-user 
RUN apt -y install sshpass
RUN pip3 install kerberos
RUN pip3 install ansible
RUN pip3 install ntlm-auth
RUN pip3 install cryptography
RUN pip3 install pykerberos
RUN pip3 install "pywinrm>=0.3.0"
RUN pip3 install "pywinrm>=0.3.0" --upgrade
RUN pip3 install requests
RUN pip3 install pywinrm[kerberos]
RUN pip3 install pywinrm[credssp]
RUN pip3 install requests_kerberos
RUN pip3 install requests_ntlm
RUN pip3 install pyvmomi
RUN apt clean && apt autoclean && apt autoremove
