nc -z -w2 localhost 9092 > /dev/null 
if  [ $? -ne 0 ]
  then

     sudo systemctl start kafka


fi

nc -z -w2 localhost 2181 > /dev/null 
if  [ $? -ne 0 ]
  then

     sudo systemctl start zookeeper


fi

nc -z -w2 localhost 9042 > /dev/null 
if  [ $? -ne 0 ]
  then

     sudo systemctl start cassandra


fi
