FROM node:14.14.0-slim
#Utilizamos la versión alpine que pesa solamente 117MB y es bastante rápido
LABEL version="1.0.8" maintainer="mingye@hotmail.es"

#Copiamos ficheros de dependencias e instalamos las dependencias
COPY package*.json ./
RUN npm install

#Eliminamos el fichero de dependencias
RUN rm package*.json

#Instalamos gulp
RUN npm install -g gulp

VOLUME /test
WORKDIR /test

CMD ["gulp","test"]
