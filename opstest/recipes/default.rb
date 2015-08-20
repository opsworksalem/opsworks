cron "crony" do
  minute '*'
  user 'root'
  action:nothing
  command "output=$(sudo service tomcat8 status)	
	if [[ \"$output\" = *\"Tomcat servlet engine is running\"* ]]
	then
	  echo 'success' >> /var/log/tomcat8/status
	else
	  echo 'fail' >> /var/log/tomcat8/status
	fi"
end
