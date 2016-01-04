#! /bin/bash
nohup zas_agent.py --start --listen 127.0.0.1 --port 10061 --redis_host 127.0.0.1 --redis_port 6379 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent.log' --user 'zabbix' --pid '/tmp/zas01.pid' &
nohup zas_agent.py --start --listen 127.0.0.1 --port 10062 --redis_host 127.0.0.1 --redis_port 6379 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent.log' --user 'zabbix' --pid '/tmp/zas02.pid' &
netstat -tln4 | grep :100[6-7][0-9]
echo 'ZAS agents started'