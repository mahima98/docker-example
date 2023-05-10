FROM node:19-alpine

# Copy file into the container app
COPY package*json /app/
COPY src /app/

# set the working directory
WORKDIR /app

RUN npm install

CMD ["node", "server.js"] 