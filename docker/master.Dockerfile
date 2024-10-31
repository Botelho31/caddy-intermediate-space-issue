FROM golang:1.23.2-alpine3.20

RUN apk update
RUN apk add nss-tools

# Install git
RUN apk add git

# Install Caddy
RUN git clone "https://github.com/caddyserver/caddy.git" /caddy
# Set the working directory
WORKDIR /caddy/cmd/caddy
RUN go build
RUN mv caddy /usr/bin/caddy

COPY Caddyfile /etc/caddy/Caddyfile

# Add an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]