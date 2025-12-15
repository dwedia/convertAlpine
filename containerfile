# Use alpine:latest as base image
FROM docker.io/alpine:latest

# Run the following steps as root
USER root

# Install ImageMagick and plugins
RUN apk add imagemagick imagemagick-jpeg imagemagick-heic libheif

# Create /scripts folder
RUN mkdir /scripts

# Set path
ENV PATH="$PATH:/scripts"

# copy script
COPY files/convertHeicJpg.sh /scripts/convertHeicJpg.sh 

# Set workdir-
WORKDIR /mnt

# Run script on startup
ENTRYPOINT convertHeicJpg.sh 
