FROM golang:1.21.1-alpine3.18

WORKDIR /app

COPY . .

RUN go mod tidy

RUN go build -o main main.go

CMD [ "./main" ]
