FROM    ubuntu:latest

# Install Node.js and npm
RUN    apt-get -y update
RUN    apt-get -y install nodejs
RUN    apt-get -y install npm
RUN    npm install -g -y pm2

# Bundle app source
ADD . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  80
CMD ["pm2", "/src/index.js"]

