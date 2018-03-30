# Postfix for Docker

## Environment variables

### POSTFIX_DOMAIN

Set the domain for outgoing mail addresses.

## Volumes

### /var/spool/postfix

To keep the unsent emails even when the container is restarted, create a volume
for `/var/spool/postfix`.
