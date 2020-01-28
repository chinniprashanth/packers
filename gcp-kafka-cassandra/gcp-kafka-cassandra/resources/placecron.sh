crontab -l | { cat; echo "*/10 * * * * sh /opt/start.sh > /dev/null 2>&1"; } | crontab -
