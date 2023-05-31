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
RUN apt-get -y install snapd build-essential libssl-dev cppcheck git wget curl gdb
#RUN wget https://github.com/Kitware/CMake/releases/download/v3.26.4/cmake-3.26.4.tar.gz
#RUN tar -zxvf cmake-3.26.4.tar.gz
#RUN cd cmake-3.26.4 && ./bootstrap && make && make install
RUN wget https://github.com/Kitware/CMake/releases/download/v3.26.4/cmake-3.26.4-linux-x86_64.tar.gz
RUN tar zxvf cmake-3.26.4-linux-x86_64.tar.gz
RUN mv cmake-3.26.4-linux-x86_64 /opt/cmake-3.26.4-linux-x86_64
RUN ln -sf  /opt/cmake-3.26.4-linux-x86_64/bin/* /usr/bin/