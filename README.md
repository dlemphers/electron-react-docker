# electron-react-docker
This project is for developing React apps inside of a Docker container using TypeScript. 

## Getting Started

The makefile has two targets:

- build-container-image

This will build the docker image locally and tag it electron-react-docker:latest.

- run-dev

This will run the docker container, mount your project folder so any changes you make will live reload inside the container and also plumb through your local X11 so Electron renders on your local machine

## Things you should know

This passes the X11 display handle to the container so the container process for Electron is rendered on your machine. This currently only works on Linux.

For non-Linux users:

### Windows

TBD

### Mac

See this [issue comment](https://github.com/moby/moby/issues/8710#issuecomment-315397071) for some hints 