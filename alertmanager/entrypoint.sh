#!/bin/sh
set -e

# Replace placeholders with environment variable values in the config file
sed -i "s|\${SMTP_EMAIL}|${SMTP_EMAIL}|g" /etc/alertmanager/alertmanager.yml
sed -i "s|\${SMTP_PASSWORD}|${SMTP_PASSWORD}|g" /etc/alertmanager/alertmanager.yml
sed -i "s|\${ALERT_EMAIL_TO}|${ALERT_EMAIL_TO}|g" /etc/alertmanager/alertmanager.yml

# Start Alertmanager
exec alertmanager --config.file=/etc/alertmanager/alertmanager.yml
