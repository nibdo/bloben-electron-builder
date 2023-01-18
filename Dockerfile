FROM node:18.13.0-bullseye

RUN dpkg --add-architecture i386 ## for Windows
RUN apt-get update && apt-get --yes install ca-certificates && update-ca-certificates
RUN apt-get install binutils -y

## Windows
RUN apt-get install wine -y
RUN apt-get install make -y
RUN apt-get install python3 -y
RUN apt-get install build-essential -y
RUN apt-get install \
    wine \
    wine32 \
    wine64 \
    libwine \
    libwine:i386 \
    fonts-wine -y
