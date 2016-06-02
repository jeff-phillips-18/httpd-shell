#
#
FROM registry.access.redhat.com/rhel7

RUN yum -y install tar httpd mod_ssl && yum -y clean all

ADD html/* /var/www/html/
COPY cgi-bin/* /var/www/cgi-bin/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
##
##
