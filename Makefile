build:
	sudo docker build . -t wolnosciowiec/docker-alpine-cron

push:
	sudo docker push wolnosciowiec/docker-alpine-cron

run:
	sudo docker run --rm --name cron -v /var/run/docker.sock:/var/run/docker.sock wolnosciowiec/docker-alpine-cron:latest
