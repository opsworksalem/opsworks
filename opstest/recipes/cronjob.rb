cron "status" do
  minute "*"
  command if ((`service tomcat8 status` == *"Tomcat servlet engine is not running"*));
    then
      s="fail "`date`" "`hostname`;
      echo $s >> /var/log/tomcat8/status;
    else
      s="success "`date`" "`hostname`;
      echo $s >> /var/log/tomcat8/status;
    fi
end

