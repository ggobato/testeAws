FROM debian:bookworm

WORKDIR /app

EXPOSE 80

ENTRYPOINT [ "sh", "-c" ]

CMD [ "apt update && apt install -y curl && curl https://leandromoreeira.s3.us-east-1.amazonaws.com/public/gameday/server3-fargate --output server && chmod +x server && sudo ./server" ]