FROM jupyter/base-notebook:latest

# Need these values for setup
USER root
WORKDIR /tmp/czmq

# https://github.com/SciRuby/iruby#preparing-dependencies-on-1604
RUN apt-get update
RUN apt-get install -y libtool libffi-dev ruby ruby-dev make
RUN apt-get install -y git libzmq-dev autoconf pkg-config
RUN git clone https://github.com/zeromq/czmq /tmp/czmq
RUN ./autogen.sh && ./configure && sudo make && sudo make install

RUN gem install cztop iruby
RUN iruby register

# Reset user and work dir
USER jovyan
WORKDIR /home/jovyan
