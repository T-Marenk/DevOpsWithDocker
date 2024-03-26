FROM ubuntu:22.04

EXPOSE 5000

COPY example-frontend .

RUN apt-get update && apt-get install -y curl && curl -sL https://deb.nodesource.com/setup_16.x | bash && apt-get install -y nodejs && npm install -g serve && \
npm install && npm run build

CMD ["serve", "-s", "-l", "5000", "build"]
