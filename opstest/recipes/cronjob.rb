cron "status" do
  minute "*"
  command if ((`ps aux | grep tomcat[8]` == ""));
    then
      s="fail ";
      echo $s >> /var/log/tomcat8/status;
    else
      s="success ";
      echo $s >> /var/log/tomcat8/status;
    fi
end

