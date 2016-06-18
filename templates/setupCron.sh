#!/bin/bash
env                                           >> /tmp/.env
cat /tmp/.env                                 >> /etc/cron.d/my-cron-job
echo -n "$TASKSCHEDULE" | cat - /tmp/crontab >> /etc/cron.d/my-cron-job
cron && tail -f /var/log/cron.log
