# ft_onion

The goal of this project is to create a web page and make it accessible from the Tor
network by creating a hidden service.

#
Nginx is used to configure the web server.

Access to the server via SSH on port 4242 is enabled.

# Usage :


    docker-compose up



## In order to get the hostname : xxxxxxxxx.onion , follow these steps :

#### Get the docker container ID:

    docker ps


#### This should give you a shell inside the container :

    docker exec -it <CONTAINER_ID> bash

#### Once inside the container, run :

    cat /var/lib/tor/hidden_service/hostname

Copy the xxxxxxxxx.onion :)
