# docker-devops
Repository intended for the development and creation of docker images. 

## Creation of the multi-architecture docker images

The following lines show how to compile a Dockerfile (through the use of buildx) to create the image for different platforms with different CPU architecture support.


```shell
# Create a new builder instance 
docker buildx create --use

# Create the multi-architecture (linux/amd64,linux/arm64) image and push it to the DockerHub repository (bdorado)
docker buildx build --push \
--platform linux/amd64,linux/arm64 \
--tag bdorado/simple-router:latest .

# Test the image:
docker pull bdorado/simple-router:latest
docker run -t -d bdorado/simple-router
```
