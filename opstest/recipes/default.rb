
cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  command {
    if `sudo service tomcat8 status`.include? 'Tomcat servlet engine is not running'
      status = 'fail '+Time.now.strftime("%Y-%m-%d %H-%M-%S")
      File.open('/var/log/tomcat8/status', 'a') { |file| file.puts status }
    else
      status = 'success '+Time.now.strftime("%Y-%m-%d %H-%M-%S")
      File.open('/var/log/tomcat8/status', 'a') { |file| file.puts status }
    end  
  }
end

