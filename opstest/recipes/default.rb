
cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  if `sudo service tomcat8 status`.include? "Tomcat servlet engine is not running"
      command %w{sudo service tomcat8 restart}.join(' ')
  end
end
 


