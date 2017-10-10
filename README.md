# electron-react-docker
This project is for developing React apps inside of a Docker container using TypeScript. 

## Getting Started

**On first run**:

`make npm-update`

This will setup the node_modules directory for you.

**On subsequent runs**:

`make run-dev`

This will run the react app on the internal port 3000 then start Electron.

There is a slight lag between the react app being ready and electron firing up, so if electron opens with a blank window simply refresh the browser. 

## Using the container

The container performs the following mount:

`-v $pwd/app:/app`

However, you can simply run the container and mount your own project folder and just use the container as a development host. 

## Things you should know

This passes the X11 display handle to the container so the container process for Electron is rendered on your machine. This currently only works on Linux.

For non-Linux users:

### Windows

TBD

### Mac

See this [issue comment](https://github.com/moby/moby/issues/8710#issuecomment-315397071) for some hints 