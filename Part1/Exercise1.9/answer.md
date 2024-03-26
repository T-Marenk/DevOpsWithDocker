# Answer

Create file:

```bash
touch text.log
```

Mount text.log to the container when running it:

```bash
docker run -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service
```

