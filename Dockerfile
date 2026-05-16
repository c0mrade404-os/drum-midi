FROM alpine:latest
RUN apk add --no-cache caddy
WORKDIR /usr/share/caddy
COPY Index.html index.html
EXPOSE 80
CMD ["caddy", "file-server", "--listen", ":80"]
