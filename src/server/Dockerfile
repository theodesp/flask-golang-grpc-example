# Stage-1
FROM golang:1.9 as builder
RUN mkdir /app
ADD . /app/
WORKDIR /app

#disable crosscompiling
ENV CGO_ENABLED=0

#compile linux only
ENV GOOS=linux

RUN go build -ldflags '-w -s' -a -installsuffix cgo -o main .

# Stage-2
FROM alpine:latest
RUN apk --no-cache add ca-certificates

WORKDIR /app/
COPY --from=builder ./app/ .
CMD ["./main"]