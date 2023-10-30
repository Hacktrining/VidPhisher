# Dockerfile

# Script       : VidPhisher
# Author       : A Mohan
# Github       : https://github.com/Hacktrining
# Instagram    : https://www.instagram.com/alone__rider__rc_390/
# Email        : mohan63025@gmail.com
# Date         : 05-06-2022
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/Hacktrining/VidPhisher"

# Working directory
WORKDIR /VidPhisher/
# Add files 
ADD . /VidPhisher

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./vp.sh", "--no-update"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t Hacktrining/vidphisher:latest", "sudo docker run --rm -it Hacktrining/vidphisher:latest"

## "sudo docker pull Hacktrining/vidphisher", "sudo docker run --rm -it Hacktrining/vidphisher"
