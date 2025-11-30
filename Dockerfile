FROM alpine:3.22

ENV POSTFIX_SMTP_TLS_SECURITY_LEVEL=may

COPY src /
RUN postfix-setup

VOLUME /var/spool/postfix

ENTRYPOINT ["postfix-entrypoint"]
CMD ["/usr/libexec/postfix/master", "-d"]
