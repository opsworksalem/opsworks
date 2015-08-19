cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  str = "Tomcat servlet engine is not running"
  command %w{
  	output=$(sudo service tomcat8 status)	
  	if ( $output == "Tomcat servlet engine is not running" )
  	then
  	  echo "success" >> /var/log/tomcat8/status
  	else
  	  echo "fail" >> /var/log/tomcat8/status
  	fi
  }.join(' ')
end
