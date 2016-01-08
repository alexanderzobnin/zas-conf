#! /bin/bash
./stop_agents.sh

# Restart redis instances
echo 'Restarting redis instances'
systemctl stop redis.service
systemctl stop redis-6380.service
systemctl stop redis-6381.service

systemctl start redis.service
systemctl start redis-6380.service
systemctl start redis-6381.service

# Show log info
tail -n 1 /var/log/redis/redis.log
tail -n 1 /var/log/redis/redis-6380.log
tail -n 1 /var/log/redis/redis-6381.log

./start_agents.sh
