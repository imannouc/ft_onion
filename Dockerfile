FROM debian

RUN apt update && apt upgrade -y

RUN apt install dumb-init -y

RUN apt install nginx -y

RUN apt install tor -y

RUN openssh-server -y

COPY default /etc/nginx/sites-available/

COPY torrc /etc/tor/

EXPOSE 80
EXPOSE 4242

# CMD [ "dumb-init", "nginx" ,"-g", "daemon off;"]