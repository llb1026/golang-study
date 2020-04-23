#   CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-w -s' -o main main.go

FROM scratch
WORKDIR /go/src/agent-test
COPY . .
ENV PORT 8080
CMD ["./main"]
