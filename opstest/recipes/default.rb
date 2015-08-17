
cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  status = 'success' + Time.now.strftime("%Y-%m-%d %H-%M-%S")
  if `sudo service tomcat8 status`.include? "Tomcat servlet engine is not running"
	  status = 'fail' + Time.new
      command %w{sudo service tomcat8 restart}.join(' ')
  end
  File.open('/var/log/tomcat8/status', 'w') { |file| file.write(status) }
end

