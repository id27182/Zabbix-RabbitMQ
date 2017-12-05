# Zabbix-RabbitMQ
This is a simple zabbix template for monitoring RabbitMQ cluster (for Windows). 
Take a note that this template require installed management plugin (https://www.rabbitmq.com/management.html)

How to start using : 
1. Install RabbitMQTools for Powershell on target host (https://github.com/RamblingCookieMonster/RabbitMQTools)
2. Put rabbitMqClusterMonitoring.ps1 in zabbix agent folder on target host and replace "your_rabbitMQ_url", "your_user", "your_password" with relevant for you vallues.
3. Test if script works with command " .\rabbitMqClusterMonitoring.ps1 "message_stats" "publish_details" "rate" "
4. Add UserParameter to zabbix agent configuration file (don't forget to check full path to rabbitMqClusterMonitoring.ps1)
5. Import template to your Zabbix server instance and asign it to target host