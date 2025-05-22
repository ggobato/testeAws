FROM public.ecr.aws/debian/debian:bookworm-slim

WORKDIR /app

COPY . .

EXPOSE 80

RUN chmod +x server3-fargate

CMD [ "/app/server3-fargate" ]
