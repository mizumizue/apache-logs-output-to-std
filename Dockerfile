FROM centos:6.8
RUN yum install -y httpd
RUN unlink /dev/stdout && ln -s /dev/stdout /etc/httpd/logs/access_log && \
    unlink /dev/stderr && ln -s /dev/stderr /etc/httpd/logs/error
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]