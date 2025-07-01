# Grafana & Prometheus Project

## 1.

Make Sure to export the following environment variables on the server

```
export GF_ADMIN_USER=${GF_ADMIN_USER}
export GF_ADMIN_PASSWORD=${GF_ADMIN_PASSWORD}
export SMTP_EMAIL=${SMTP_EMAIL}
export SMTP_PASSWORD=${SMTP_PASSWORD}
export ALERT_EMAIL_TO=${ALERT_EMAIL_TO}
```

## 2.

Build the Docker Images && Containers

```
docker-compose up -d
```

## 3.

Grafana Server URL:

```
http://localhost:3000
```

Alertmanager URL:

```
http://localhost:9093
```


Prometheus URL:

```
http://localhost:9090
```

