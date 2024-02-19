# docker-kaleidoscope
Docker setup for kaleidoscope-cli

## Build with the following command
```bash
docker pull --platform linux/amd64 ubuntu
docker build --platform linux/amd64 -t docker-kaleidoscope .
```

## Run with a shell inside the container
```bash
docker run --platform linux/amd64 -it docker-kaleidoscope
```

## Kaleidoscope User Guide PDF
A guide for kaleidoscope-cli can be found on page 108 of the following [PDF](http://condor.wildlifeacoustics.com/Kaleidoscope.pdf)
