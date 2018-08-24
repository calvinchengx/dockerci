FROM docker:stable

# bash and git
RUN apk add --update bash git

# nodejs and webpack
RUN apk add --update nodejs nodejs-npm
RUN npm i -g webpack-cli webpack yarn
RUN npm install node-sass

# python3 and docker-compose
RUN apk add --no-cache python3
RUN pip3 install docker-compose

# python (python2), make, gcc, g++, node-gyp and node-sass
RUN apk add --no-cache make gcc g++ python
RUN npm install -g node-gyp

