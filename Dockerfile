FROM alpine:3.8

RUN apk --update add docker make bash sudo curl wget

CMD /bin/bash -c "(cat /root/cron > /etc/crontabs/root || true) && crond -d 0 -f"
