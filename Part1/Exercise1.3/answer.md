# Answer

## Secret message

The secret message is: 'You can find the source code here: https://github.com/docker-hy'

## Commands

Start the container:

```bash
docker run -d -it --name secret devopsdockeruh/simple-web-service:ubuntu
```

Enter the container:

```bash
docker exec -it secret bash
```

Inside the container, get the logs:

```bash
tail -f ./text.log
```
