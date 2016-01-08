#! /bin/bash

# Start backend group
echo 'Starting backend group'
zas_agent.py --start --listen 127.0.0.1 --port 10061 --redis_host 127.0.0.1 --redis_port 6379 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent_backend.log' --user 'zabbix' --pid '/tmp/zas01.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10062 --redis_host 127.0.0.1 --redis_port 6379 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent_backend.log' --user 'zabbix' --pid '/tmp/zas02.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10063 --redis_host 127.0.0.1 --redis_port 6379 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent_backend.log' --user 'zabbix' --pid '/tmp/zas03.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10064 --redis_host 127.0.0.1 --redis_port 6379 --scenario '/usr/share/zas-conf/zas_scenario_backend.cfg' --log '/var/log/zabbix/zas_agent_backend.log' --user 'zabbix' --pid '/tmp/zas04.pid' --daemonize

# Start frontend group
echo 'Starting frontend group'
zas_agent.py --start --listen 127.0.0.1 --port 10071 --redis_host 127.0.0.1 --redis_port 6380 --scenario '/usr/share/zas-conf/zas_scenario_frontend.cfg' --log '/var/log/zabbix/zas_agent_frontend.log' --user 'zabbix' --pid '/tmp/zas11.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10072 --redis_host 127.0.0.1 --redis_port 6380 --scenario '/usr/share/zas-conf/zas_scenario_frontend.cfg' --log '/var/log/zabbix/zas_agent_frontend.log' --user 'zabbix' --pid '/tmp/zas12.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10073 --redis_host 127.0.0.1 --redis_port 6380 --scenario '/usr/share/zas-conf/zas_scenario_frontend.cfg' --log '/var/log/zabbix/zas_agent_frontend.log' --user 'zabbix' --pid '/tmp/zas13.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10074 --redis_host 127.0.0.1 --redis_port 6380 --scenario '/usr/share/zas-conf/zas_scenario_frontend.cfg' --log '/var/log/zabbix/zas_agent_frontend.log' --user 'zabbix' --pid '/tmp/zas14.pid' --daemonize

# Start database group
echo 'Starting database group'
zas_agent.py --start --listen 127.0.0.1 --port 10081 --redis_host 127.0.0.1 --redis_port 6381 --scenario '/usr/share/zas-conf/zas_scenario_database.cfg' --log '/var/log/zabbix/zas_agent_database.log' --user 'zabbix' --pid '/tmp/zas21.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10082 --redis_host 127.0.0.1 --redis_port 6381 --scenario '/usr/share/zas-conf/zas_scenario_database.cfg' --log '/var/log/zabbix/zas_agent_database.log' --user 'zabbix' --pid '/tmp/zas22.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10083 --redis_host 127.0.0.1 --redis_port 6381 --scenario '/usr/share/zas-conf/zas_scenario_database.cfg' --log '/var/log/zabbix/zas_agent_database.log' --user 'zabbix' --pid '/tmp/zas23.pid' --daemonize
zas_agent.py --start --listen 127.0.0.1 --port 10084 --redis_host 127.0.0.1 --redis_port 6381 --scenario '/usr/share/zas-conf/zas_scenario_database.cfg' --log '/var/log/zabbix/zas_agent_database.log' --user 'zabbix' --pid '/tmp/zas24.pid' --daemonize

netstat -tln4 | grep :100[6-8][0-9]
echo 'ZAS agents started'
