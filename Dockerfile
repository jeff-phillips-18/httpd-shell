FROM registry.access.redhat.com/ubi8/ubi:latest

USER root

WORKDIR /srv

RUN dnf -y install python39 && dnf -y clean all

COPY html /srv

RUN chown -R 1001:0 /srv && chmod -R ug+rwx /srv
USER 1001

EXPOSE 8080

ENTRYPOINT ["python3"]
CMD ["-m", "http.server", "-d", "/srv/", "8080"]
##
##
