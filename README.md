# Postfix for Docker

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/mhzawadi/docker-postfix/build%20our%20image%20for%20latest?label=Docker%20Latest)
![Docker Pulls](https://img.shields.io/docker/pulls/mhzawadi/postfix)

Small image (~ 4MB) for Postfix based on Alpine. This image is only for outgoing messages and allows connection to the SMTP server from [private networks](https://en.wikipedia.org/wiki/Private_network) (10.0.0.0/8, 172.16.0.0/12 and 192.168.0.0/16) without authentication.


## Environment variables

### POSTFIX_DOMAIN

Set the domain name. Also sets the host name in the e-mail address if the host name is not an FQDN.

### POSTFIX_RELAYHOST

The relayhost parameter specifies the default host to send mail

### POSTFIX_SMTP_TLS_SECURITY_LEVEL

Set the default security level for outgoing mails.

    - POSTFIX_SMTP_TLS_SECURITY_LEVEL="may"

Valid levels are **none**, **may**, **encrypt**, … see http://www.postfix.org/postconf.5.html#smtp_tls_security_level

Default: may


### POSTFIX_SMTP_TLS_POLICY_MAPS

Override the default security level for outgoing mails per domain.

    -e POSTFIX_SMTP_TLS_POLICY_MAPS="foo.example.com encrypt\nbar.example.com may"

Valid levels are **none**, **may**, **encrypt**, … see http://www.postfix.org/postconf.5.html#smtp_tls_security_level

http://www.postfix.org/postconf.5.html#smtp_tls_policy_maps


## Volumes

### /var/spool/postfix

To keep the unsent emails even when the container is restarted, create a volume
for `/var/spool/postfix`.
