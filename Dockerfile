FROM ubuntu:18.04
RUN apt update && \
  apt install -y curl vim git
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
  apt install -y nodejs && \
  apt autoclean && \
  rm -rf /var/lib/apt/lists/*
RUN npm i yarn -g