FROM    ubuntu:latest

# Install Node.js and npm
RUN    apt-get -y update
RUN    apt-get -y install nodejs
RUN    apt-get -y install npm
RUN    apt-get -y install git

RUN    npm install -g pm2
RUN    ln -s /usr/bin/nodejs /usr/bin/node
# Bundle app source
ADD . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  80
CMD node ./src/index.js


