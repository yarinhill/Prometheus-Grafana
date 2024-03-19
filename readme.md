# Grafana Project

## 1.

Make Sure to export the following environment variables on the server

```
GF_ADMIN_USER=${GF_ADMIN_USER}
GF_ADMIN_PASSWORD=${GF_ADMIN_PASSWORD}
SMTP_EMAIL=${SMTP_EMAIL}
SMTP_PASSWORD=${SMTP_PASSWORD}
```

## 2.

Build the Docker Images && Containers

```
docker-compose up -d
```


## 3.

To view the the Grafana Server Go to URL:

```
http://localhost:3000
```
