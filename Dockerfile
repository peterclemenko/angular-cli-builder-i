
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

# install and cache app dependencies
RUN npm install -g @angular/cli @nestjs/schematics @nestjs/cli @ngrx/schematics --unsafe

# start app
ENTRYPOINT [ "/bin/bash" ]
