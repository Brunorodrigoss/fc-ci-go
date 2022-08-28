FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod init fcci-go && \
    go mod tidy && \
    go build -o math 

CMD ["./math"]