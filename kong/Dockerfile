FROM ubuntu

RUN apt-get update && apt-get install curl -y

WORKDIR /var/local

COPY . .

ENTRYPOINT ["sh", "docker-entrypoint.sh"]