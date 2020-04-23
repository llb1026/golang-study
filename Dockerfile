#   CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-w -s' -o main main.go

FROM golang:1.12
WORKDIR /go/src/agent-test
COPY . .
ENV PORT 8080
RUN go get ./
RUN go build
CMD ["./agent-test"]
