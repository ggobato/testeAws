FROM debian:bookworm-slim

WORKDIR /app

COPY . .

EXPOSE 80

CMD [ "/app/server3-fargate" ]
