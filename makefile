build-container-image:
	docker build --rm -t electron-react-docker:latest -f .docker/base .docker

run-dev:
	xhost +local:docker
	docker run -ti --rm \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v `pwd`/app:/app \
		-w /app \
		-e DISPLAY=$$DISPLAY \
		-p 3000:3000 \
		electron-react-docker \
		bash
