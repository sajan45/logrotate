FROM alpine

RUN apk update && apk add logrotate

COPY load-and-sleep.sh logrotate.conf run-logrotate clean-completed-pods.sh /

CMD crond -l 2 -f

RUN chmod +x logrotate.conf

ENTRYPOINT ["/load-and-sleep.sh"]
