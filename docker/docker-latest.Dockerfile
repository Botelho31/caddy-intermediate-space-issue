FROM caddy:latest

RUN apk update
RUN apk add nss-tools

COPY Caddyfile /etc/caddy/Caddyfile

# Add an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]