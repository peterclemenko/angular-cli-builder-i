
FROM node:9-stretch
LABEL maintainer="Peter Clemenko"

# Install system components
RUN apt-get update
RUN apt-get install -y curl gnupg apt-transport-https sudo wget

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/workspace

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

EXPOSE 3000
EXPOSE 4200

# install and cache app dependencies
RUN npm install -g @angular/cli --unsafe
RUN npm install -g @angular/cdk --unsafe
RUN npm install -g @angular/material --unsafe
RUN npm install -g @angular-devkit/schematics-cli --unsafe
RUN npm install -g @nestjs/schematics --unsafe
RUN npm install -g @ngrx/schematics --unsafe
RUN npm install -g @nestjs/cli --unsafe
RUN npm install -g @ngrx/schematics --unsafe

# start app
ENTRYPOINT [ "/bin/bash" ]
