cron "status" do
  minute "*"
  command "date >> /var/log/tomcat8/status"
end
