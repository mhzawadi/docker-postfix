FROM alpine:3.7

COPY src /
RUN postfix-setup

VOLUME /var/spool/postfix

ENTRYPOINT ["postfix-entrypoint"]
CMD ["/usr/lib/postfix/master", "-d"]
