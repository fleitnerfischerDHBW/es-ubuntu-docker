FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="leitner-fischer@dhbw-ravensburg.de"
LABEL version="0.1"
LABEL description="This is custom Docker Image for \
the Embedded Systems Course at DHBW Ravensburg."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt-get update

#install build essentials
RUN apt-get -y install build-essential libssl-dev cmake cppcheck git wget curl

