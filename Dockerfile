FROM node
WORKDIR /app
COPY src /app
RUN apt-get update -y \
  && apt-get install -y nmap
RUN npm install
EXPOSE 8080
CMD npm start
