cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  command if [ "$(sudo service tomcat8 status)" =~ .*running.* ];
         then
           echo "success" >> /var/log/tomcat8/status
         else
           echo "fail" >> /var/log/tomcat8/status
         fi;
end
