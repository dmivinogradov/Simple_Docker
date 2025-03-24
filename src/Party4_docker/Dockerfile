FROM nginx

COPY nginx.conf /etc/nginx/
COPY run.sh /
COPY server.c /

RUN apt-get update;  \
    apt-get install -y gcc spawn-fcgi libfcgi-dev; \ 
    gcc server.c -o webserver -lpthread -lfcgi; \
    chmod +x /run.sh; \
    rm -rf /var/lib/apt/lists

ENTRYPOINT ["./run.sh"]