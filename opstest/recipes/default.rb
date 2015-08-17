
cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  cmd = ''
  if `sudo service tomcat8 status`.include? 'Tomcat servlet engine is not running'
    status = 'fail '+Time.now.strftime("%Y-%m-%d %H-%M-%S")
    File.open('/var/log/tomcat8/status', 'a') { |file| file.puts status }
    cmd = "sudo service tomcat8 restart"
  else
    status = 'success '+Time.now.strftime("%Y-%m-%d %H-%M-%S")
    File.open('/var/log/tomcat8/status', 'a') { |file| file.puts status }
  end
  command %w{cmd}.join(' ') 
end

