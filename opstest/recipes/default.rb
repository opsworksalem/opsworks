cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  command %w{sudo service tomcat8 restart}.join(' ')
  only_if {
          status = 'fail '
          status += Time.now.strftime("D%Y%m%dT%H%M%S")
          File.open('/var/log/tomcat8/status', 'a') { |file| file.puts status }
          `sudo service tomcat8 status`.include? "Tomcat servlet engine is not running"
  }
  not_if {
          status = 'success '
          status += Time.now.strftime("D%Y%m%dT%H%M%S")
          File.open('/var/log/tomcat8/status', 'a') { |file| file.puts status }
          `sudo service tomcat8 status`.include? "Tomcat servlet engine is running with pid"
    
  }
  
  
end

