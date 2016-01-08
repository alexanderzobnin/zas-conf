#! /bin/bash
./stop_agents.sh
systemctl restart redis
./start_agents.sh