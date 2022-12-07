## Simple Docker

```
# List running containers
docker ps
docker ps | grep simple
docker ps -a | grep simple
docker rm <short container_id>
docker container start <container_id>
docker inspect <container_id>

# Build an image
docker build -t simple-docker:latest .
docker image ls | grep simple

# Run a container
docker run --help
docker run [imagename]
docker run simple-docker:latest

# Run a command, and delete the created container after exit. Great for one off commands
docker run --rm (...)

# Run a container with interactive and tty
docker run -it simple-docker:latest

# Run a container with interactive, tty and ports published
docker run -it -p 3000:3000 simple-docker:latest

# Run a container, and also map a folder to inside the container (bind mount)
docker run -it -p 80:3000 -v $PWD/files:/storage/files simple-docker:latest

# Start a shell session inside the container
docker exec -it <short container_id> bash
docker exec -it db15 bash

# Also mount a Docker volume
# First, have it created, then you can use it
docker volume ls | grep simple
docker volume create simple-files
docker run -it -p 80:3000 --rm \
    -v $PWD/files:/storage/files \
    -v simple-files:/storage/more-files \
    simple-docker:latest



# Stop a container
docker stop <container_id> 
docker stop 67c89c8be389
## Or first unique for typing convinience
docker stop <short container_id>
docker stop 67c

# Explore docker-compose
docker-compose
docker-compose version
docker-compose config
docker-compose -f docker-compose.yml -f docker-compose.override.yml config
docker-compose build
docker-compose up
docker-compose up --remove-orphans
docker-compose up --build
docker-compose start
docker-compose stop
docker-compose logs --follow
docker-compose down

docker-compose exec <service_name> bash
docker-compose exec webapp bash
docker-compose run --rm webapp bash

```

## Package manager

[PM2](https://pm2.keymetrics.io/docs/usage/quick-start)
or
[pnpm](https://pnpm.io/installation)
````
npm install pm2@latest -g 
// or
npm install -g pnpm
pnpm i
pnpm i nodemon
pnpm run dev

````

## Git flow

````
git status
git add .
git commit -m 'Some text'
git push

gh repo view --web

git tag <name>
git push --tags

````

## Linux command

````
pwd
uname
ls
ls -al
cd <path>
touch hello.txt

apt update
apt install nano
nano i_was_here.txt
cat i_was_here.txt

rm -rf <folder>

exit

curl localhost:80

````