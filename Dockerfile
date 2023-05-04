FROM debian

RUN apt update && apt upgrade -y

RUN apt install dumb-init -y

RUN apt install nginx -y

RUN apt install tor -y

RUN apt install openssh-server -y

COPY default /etc/nginx/sites-available/

COPY torrc /etc/tor/

COPY docker-entrypoint.sh /tmp/
RUN chmod +x /tmp/docker-entrypoint.sh

EXPOSE 80
EXPOSE 4242

ENTRYPOINT [ "bash", "-c" ]
CMD ["service tor start && nginx -g 'daemon off;'"]
# CMD ["/tmp/docker-entrypoint.sh"]

# useradd -m -sh /bin/bash user
# passwd user -p 123456