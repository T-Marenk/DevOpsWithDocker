FROM golang:1.16

ENV REQUEST_ORIGIN=http://localhost:5000

WORKDIR /usr/src/app

EXPOSE 8080

COPY example-backend .

RUN go build

CMD ["./server"]
