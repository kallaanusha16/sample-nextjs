FROM node:18.19.0


LABEL maintainer="kallaanusha16@gmail.com"\
    name="saample-nextjs"


ENV PORT=3000\
    HOST='0.0.0.0'


WORKDIR /work


COPY . /work


RUN npm install -f


RUN npm run build



EXPOSE 3000


CMD ["npm", "start"]