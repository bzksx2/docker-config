FROM centos:7

RUN yum install epel-release -y &&yum install nginx -y&&yum install git -y&&yum install java-1.8.0-openjdk -y&& yum clean all

RUN mkdir -p /home/admin/app&&cd /home/admin/app&&git init&&git pull https://github.com/userya/release-package-config-s.git

CMD cd /home/admin/app && git pull https://github.com/userya/release-package-config-s.git \
	&& nginx -c /home/admin/app/sys-config/nginx.conf \
	&& java -jar /home/admin/app/java/api-1.0-SNAPSHOT.jar
#COPY start.sh /home/admin/app/

#RUN chmod 777 /home/admin/app/start.sh

#CMD ["./home/admin/app/start.sh"]





