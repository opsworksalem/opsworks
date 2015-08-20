cron 'tomcat_failure_catcher' do
  minute '*'
  user 'root'
  action :create
  command "output=$(sudo service tomcat8 status) echo 'success'>>/var/log/tomcat8/status"
end
