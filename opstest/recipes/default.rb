cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  command if [ "$(sudo service tomcat8 status)" = "Tomcat servlet engine is not running" ];
         then
           echo "fail" >> /var/log/tomcat8/status
         else
           echo "success" >> /var/log/tomcat8/status
         fi;
end
