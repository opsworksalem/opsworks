cron 'tomcat_failure_catcher' do
  minute '*'
  user 'root'
  action : create
  command 'output=$(sudo service tomcat8 status)	
	if [[ \"$output\" = *\"Tomcat servlet engine is running\"* ]]
	then
	  echo "success" >> /var/log/tomcat8/status
	else
	  echo "fail" >> /var/log/tomcat8/status
	fi'
end
