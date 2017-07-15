FROM node:8.1.4

RUN npm -v
RUN mkdir /opt/frontend_experiment
RUN npm install http-server -g

COPY . /opt/frontend_experiment

WORKDIR /opt/frontend_experiment

EXPOSE 3000

CMD ["http-server", "./public", "-p", "3000"]
