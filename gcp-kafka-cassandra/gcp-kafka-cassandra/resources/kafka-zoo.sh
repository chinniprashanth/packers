sudo wget -P /opt/  http://archive.apache.org/dist/kafka/1.0.0/kafka_2.11-1.0.0.tgz
sudo tar -xzvf /opt/kafka_2.11-1.0.0.tgz
sudo wget -P /opt/  https://archive.apache.org/dist/zookeeper/zookeeper-3.4.10/zookeeper-3.4.10.tar.gz
sudo tar -xzvf /opt/zookeeper-3.4.10.tar.gz
sudo mkdir -p /data/zookeeper
sudo mkdir -p /data/kafka-logs
sudo chown -R kafka:kafka /data/zookeeper
sudo chown -R kafka:kafka /opt/zookeeper-3.4.10
sudo cd /opt/kafka_2.11-1.0.0/config
sudo mv server.properties server.propertiesback
sudo cp /tmp/resources/server.properties /opt/kafka_2.11-1.0.0/config/server.properties
sudo chown -R kafka:kafka /opt/kafka_2.11-1.0.0
sudo chown -R kafka:kafka /data/kafka-logs
sudo cp /tmp/resources/zoo.conf /etc/systemd/system/zookeeper.service
sudo cp /tmp/resources/kafka.conf /etc/systemd/system/kafka.service
sudo systemctl daemon-reload
sudo systemctl start zookeeper
sudo systemctl enable zookeeper
sudo systemctl start kafka
sudo systemctl enable kafka


