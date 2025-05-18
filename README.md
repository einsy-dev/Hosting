# Basic personal server template

PgAdmin - Postgresql - Gogs(git) - Server proxy - Static files server

## Requires additional domens or subdomains and ssl sertificates

- \*
- postgresql.\* (only domen)
- pgadmin.\*
- gogs.\*

### Setting ssl certifacates with certbot

```bash
 sudo certbot certonly --standalone
```

Errors may occur if folder permitions are set incorectly
