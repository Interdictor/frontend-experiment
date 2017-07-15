FROM node:8.1.4

RUN npm -v
RUN npm install mocha
RUN mkdir /opt/frontend_experiment
RUN npm install http-server -g

COPY ./public /opt/frontend_experiment

WORKDIR /opt/frontend_experiment

EXPOSE 3000

CMD ["http-server", ".", "-p", "3000"]
