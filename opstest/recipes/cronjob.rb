cron "status" do
  minute "*"
  command if ((`ps aux | grep tomcat[8]` == ""));
    then
      s="fail "`date`" "`hostname`;
      echo $s >> /var/log/tomcat8/status;
    else
      s="success "`date`" "`hostname`;
      echo $s >> /var/log/tomcat8/status;
    fi
end

