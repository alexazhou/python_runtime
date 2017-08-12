#Dockerfile
FROM fedora:26
MAINTAINER AlexaZhou <AlexaZhou@163.com>

#COPY 
COPY ./requirements.txt /root/image_info/

#install package
RUN yum install python3 iputils openssl-static net-tools -y && \
    yum clean all && \	
    python3 -m pip --no-cache-dir install -r /root/image_info/requirements.txt

#End
