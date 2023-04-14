FROM golang:1.15.8-buster
WORKDIR /app
COPY . .

RUN /app/setup.sh

EXPOSE 9999

CMD ls