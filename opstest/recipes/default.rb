cron 'crony' do
  minute '*'
  mailto "n.azat@alem.kz"
  user 'root'
  command "output=$(sudo service tomcat8 status)  if [[\"$output\" = *\"running"\*]] then echo 'success' >> /var/log/tomcat8/status  else echo 'fail' >> /var/log/tomcat8/status fi"
end
