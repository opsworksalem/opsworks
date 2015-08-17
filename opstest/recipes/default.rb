
cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  status = 'success '
  if `sudo service tomcat8 status`.include? "Tomcat servlet engine is not running"
      status = 'fail '
      command %w{sudo service tomcat8 restart}.join(' ')
  end
  status += Time.now.strftime("%Y-%m-%d %H-%M-%S")
  File.open('/var/log/tomcat8/status', 'w') { |file| file.puts status }
end

