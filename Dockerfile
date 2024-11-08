
FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN git clone https://github.com/Sammy971/Queen_Anita-V3
  

COPY package.json .

RUN npm install && npm install qrcode-terminal

COPY . .

EXPOSE 3000

CMD ["npm start"]
