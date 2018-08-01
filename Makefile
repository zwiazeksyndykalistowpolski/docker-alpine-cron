build:
	sudo docker build . -t wolnosciowiec/docker-cron

push:
	sudo docker push wolnosciowiec/docker-cron

run:
	sudo docker run --rm --name cron -v /var/run/docker.sock:/var/run/docker.sock wolnosciowiec/docker-cron:latest
