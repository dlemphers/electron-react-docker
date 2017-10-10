npm-update:
	docker run -ti --rm \
		-v `pwd`/app:/app \
		-w /app \
		dlemphers/electron-react-docker \
		npm update

run-dev:
	xhost +local:docker
	docker run -ti --rm \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v `pwd`/app:/app \
		-w /app \
		-e DISPLAY=$$DISPLAY \
		-p 3000:3000 \
		dlemphers/electron-react-docker \
		npm run dev
