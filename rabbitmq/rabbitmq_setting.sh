apt update
apt install rabbitmq-server
service rabbitmq-server start
rabbitmqctl add_user admin admin
rabbitmqctl set_user_tags admin administrator
rabbitmqctl set_permissions -p / admin '.*' '.*' '.*'
rabbitmq-plugins enable rabbitmq_management

