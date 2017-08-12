#Dockerfile
FROM fedora:49236bc2f0da
MAINTAINER AlexaZhou <AlexaZhou@163.com>

#COPY 
COPY ./requirements.txt /root/image_info/

#install package
RUN yum install python3 iputils openssl-static net-tools -y && \
    python3 -m pip install -r /root/image_info/requirements.txt		

#End
