## Simple Docker

```
# List running containers
docker ps
docker ps | grep simple

# Build an image
docker build -t simple-docker:latest .
docker image ls | grep simple

# Run a container
docker run --help
docker run [imagename]
docker run simple-docker:latest
docker run -it simple-docker:latest
docker run -it -p 3000:3000 simple-docker:latest

# Stop a container
docker stop <container_id> 
docker stop 67c89c8be389
## Or first unique for typing convinience
docker stop 67c

```