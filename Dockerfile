FROM alpine:3.7

ENV POSTFIX_SMTP_TLS_SECURITY_LEVEL=may

COPY src /
RUN postfix-setup

VOLUME /var/spool/postfix

ENTRYPOINT ["postfix-entrypoint"]
CMD ["/usr/lib/postfix/master", "-d"]
