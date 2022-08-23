	FROM centos:centos7

	# Install apache2 with less
	RUN yum -y update && \
	yum -y install httpd && \
	yum clean all
	 
	# Sample index.html for test 
	COPY . /var/www/html/
	# COPY . /var/www/html/
	 
	# Port and set entry point for container 
	EXPOSE 80
	ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
