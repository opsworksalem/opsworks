script = '*  *    * * *   root    s=`service tomcat8 status`; if [ "$s" = " * Tomcat servlet engine is not running." ];   then  service tomcat8 start;   s="fail "`date`" "`hostname`;     echo $s >> /var/log/tomcat8/status;    else     s="success "`date`" "`hostname`;     echo $s >> /var/log/tomcat8/status;    fi'
File.open('/etc/crontab', 'a') { |file| file.puts script }
