#!/bin/sh

set -x
#  copy the script logrotate-run.sh to the 15 minute crontab entry
cp run-logrotate check-cron-jobs /etc/periodic/15min/
if [ $? -ne 0 ]; then
  echo "copy command failed"
  exit 1
fi

#  sleep forever
while true; do
  sleep 86400
done
