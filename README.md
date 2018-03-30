# Postfix for Docker

Small image (~ 4MB) for Postfix based on Alpine. This image is only for outgoing messages and allows connection to the
SMTP server from 10.0.0.0/8, 172.16.0.0/12 and 192.168.0.0/16 without authentication.

## Environment variables

### POSTFIX_DOMAIN

Set the domain name. Also sets the host name in the e-mail address if the host name is not an FQDN.

## Volumes

### /var/spool/postfix

To keep the unsent emails even when the container is restarted, create a volume
for `/var/spool/postfix`.
