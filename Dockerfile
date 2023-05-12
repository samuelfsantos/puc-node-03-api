# Utiliza uma imagem de node da Alpine
FROM node:alpine

# Cria o diretório da aplicação no container
WORKDIR /app

# Publica a aplicação
COPY package.json .
RUN npm install
COPY . .

# Abre a porta 3002 e executa o comando para iniciar a aplicação
EXPOSE 3002

#CMD [ "node", "index.js" ]
CMD ["npm", "start"]