FROM golang:1.8-alpine
ADD . /go/src/agent-test
RUN go install agent-test
FROM alpine:latest
COPY --from=0 /go/bin/agent-test .
ENV PORT 8080
CMD ["./agent-test"]