FROM debian

RUN apt update && apt upgrade -y

RUN apt install nginx -y

RUN apt install tor -y

RUN apt install openssh-server -y

COPY torrc /etc/tor/
COPY default /etc/nginx/sites-available/
COPY sshd_config /etc/ssh/

RUN useradd -m test
RUN mkdir /home/test/.ssh
COPY authorized_keys /home/test/.ssh

EXPOSE 80
EXPOSE 4242

ENTRYPOINT [ "bash", "-c" ]
CMD ["service tor start && service ssh start && nginx -g 'daemon off;'"]