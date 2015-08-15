
cron 'hdfs_space.sh' do
  minute '*/2'
  user 'root'
  puts "okokokok"
  puts `sudo service tomcat8 status`
  if `sudo service tomcat8 status` == "* Tomcat servlet engine is not running."
      command %w{sudo service tomcat8 start}.join(' ')
  end
end
 


