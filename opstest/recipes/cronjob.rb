cron "status" do
  minute "*"
  command if ((`ps aux | grep tomcat[8]` == "")); then echo "fail" >> /var/log/tomcat8/status; else echo "success" >> /var/log/tomcat8/status;
    fi
end

