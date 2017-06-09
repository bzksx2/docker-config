cd /home/admin/app \ 
	&& git pull https://github.com/userya/release-package-config-s.git \
	&& nginx -c /home/admin/app/sys-config/nginx.conf \
	&& java -jar /home/admin/app/java/api-1.0-SNAPSHOT.jar &