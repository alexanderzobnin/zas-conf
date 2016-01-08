#! /bin/bash

# Start backend group
zas_agent.py --start --listen 127.0.0.1 --port 10061 --redis_host 127.0.0.1 --redis_port 6379 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent.log' --user 'zabbix' --pid '/tmp/zas01.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10062 --redis_host 127.0.0.1 --redis_port 6379 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent.log' --user 'zabbix' --pid '/tmp/zas02.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10063 --redis_host 127.0.0.1 --redis_port 6379 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent.log' --user 'zabbix' --pid '/tmp/zas03.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10064 --redis_host 127.0.0.1 --redis_port 6379 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent.log' --user 'zabbix' --pid '/tmp/zas04.pid' --daemonize
echo 'Backend group started'

# Start frontend group
zas_agent.py --start --listen 127.0.0.1 --port 10071 --redis_host 127.0.0.1 --redis_port 6380 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent.log' --user 'zabbix' --pid '/tmp/zas11.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10072 --redis_host 127.0.0.1 --redis_port 6380 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent.log' --user 'zabbix' --pid '/tmp/zas12.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10073 --redis_host 127.0.0.1 --redis_port 6380 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent.log' --user 'zabbix' --pid '/tmp/zas13.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10074 --redis_host 127.0.0.1 --redis_port 6380 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent.log' --user 'zabbix' --pid '/tmp/zas14.pid' --daemonize
echo 'Frontend group started'

netstat -tln4 | grep :100[6-8][0-9]
echo 'ZAS agents started'