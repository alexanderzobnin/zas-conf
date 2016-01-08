#! /bin/bash
./stop_agents.sh

# Restart redis instances
systemctl restart redis.service
systemctl restart redis-6380.service

./start_agents.sh