FROM docker:stable

RUN apk add --update bash nodejs nodejs-npm git
RUN npm i -g webpack-cli webpack yarn

RUN apk add --no-cache python3
RUN pip3 install docker-compose
