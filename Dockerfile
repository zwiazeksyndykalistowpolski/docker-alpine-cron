FROM debian:buster-slim

RUN apt-get update \
    && apt-get -y install cron docker.io make bash \
    && apt-get clean -y

CMD /bin/bash -c "(cp /root/cron /var/spool/cron/crontabs/root 2>/dev/null || true) && cron -l 0 -f"
