cron 'tomcat_failure_catcher' do
  minute '*'
  user 'root'
  action :create
  command "output=$(sudo service tomcat8 status)if[[\"$output\"==*\"Tomcat servlet engine is running\"*]];then cat << EOF > /var/log/tomcat8/status 
  success works 
  
  EOF else cat << EOF > /var/log/tomcat8/status 
  fail works 
  
  EOF fi"
end
