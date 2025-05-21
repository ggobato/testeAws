FROM alpine:latest

WORKDIR /app

RUN apk update
RUN apk upgrade
RUN apk --no-cache add libbsd libbsd-dev libc6-compat

COPY ws-day2-server.bin ./
COPY server.ini ./

EXPOSE 8080

ENTRYPOINT [ "/app/ws-day2-server.bin", "-port", "8080"]