FROM alpine:3.8

RUN apk --update add fcron docker make bash

CMD /bin/bash -c "fcron -f -d"
