FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt -y upgrade
RUN apt -y install python3-pip gcc vim libkrb5-dev krb5-user
RUN pip3 --no-cache-dir install "ansible>=2.10"
RUN pip3 --no-cache-dir install ntlm-auth
RUN pip3 --no-cache-dir install cryptography
RUN pip3 --no-cache-dir install kerberos
RUN pip3 --no-cache-dir install pykerberos
RUN pip3 --no-cache-dir install "pywinrm>=0.3.0"
RUN pip3 --no-cache-dir install "pywinrm>=0.3.0" --upgrade
RUN pip3 --no-cache-dir install pywinrm[kerberos]
RUN pip3 --no-cache-dir install pywinrm[credssp]
RUN pip3 --no-cache-dir install requests
RUN pip3 --no-cache-dir install requests_kerberos
RUN pip3 --no-cache-dir install requests_ntlm
RUN pip3 --no-cache-dir install pyvmomi
RUN apt clean && apt autoclean && apt autoremove
