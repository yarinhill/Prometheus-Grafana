FROM prom/alertmanager:latest

USER root

# Copy the configuration and entrypoint script into the image
COPY alertmanager.yml /etc/alertmanager/alertmanager.yml
COPY entrypoint.sh /entrypoint.sh

# Copy the entrypoint script and set it as executable with octal permissions
RUN chmod +x /entrypoint.sh

# Use the custom entrypoint
ENTRYPOINT ["/entrypoint.sh"]