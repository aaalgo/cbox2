from ubuntu:16.04
MAINTAINER Wei Dong
RUN apt-get update
RUN apt-get install -y python3-dev
RUN apt-get install -y g++
RUN apt-get install -y cmake make
RUN apt-get install -y python3-numpy
RUN apt-get install -y libgtk2.0
RUN apt-get install -y python3-pip
RUN pip3 install jinja2 opencv-python simplejson
