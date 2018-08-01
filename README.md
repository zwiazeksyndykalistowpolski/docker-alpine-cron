Docker image
============

Docker client + crontab + make + bash
Allows to execute scheduled tasks inside other containers by passing access to docker socket.

### Instruction

1. Put your crontab file to the `/etc/crontabs/root` by mounting a volume or by adding a file to the container.

    Example crontab file:
    ```
    15 3 * * * cd /var/project && make task_clear_cache
    ```

2. Run the container granting access to the docker socket

    ```bash
    sudo docker run --rm --name cron -v /var/run/docker.sock:/var/run/docker.sock -v ./cron:/etc/crontabs/root wolnosciowiec/docker-cron:latest
    ```

3. That's all!
