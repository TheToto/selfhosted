sudo docker-compose exec pihole "/usr/bin/sqlite3" "/etc/pihole/pihole-FTL.db" "DELETE from queries WHERE client = '172.20.0.1';"
