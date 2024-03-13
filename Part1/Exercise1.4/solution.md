# Solution

## Commands

Start the container:

```bash
docker run -d -it --name website ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```

Enter the container:

```bash
docker exec -it website bash
```

Update repositories and install curl inside the container:

```bash
apt-get update
apt-get install curl
```

Now the program works the intended way

## Another solution

Instead of going in the container, curl can be installed at the start of the command

```bash
docker run -d -it --name website ubuntu sh -c 'apt-get update; apt-get install -y curl; while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```

Now, when the container is attached, curl gets installed.
