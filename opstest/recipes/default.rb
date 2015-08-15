
cron 'hdfs_space.sh' do
  minute '*/2'
  user 'root'
  puts `sudo service tomcat8 status`
  if `sudo service tomcat8 status` == "* Tomcat servlet engine is not running."
      puts "okokokok"
      command %w{sudo service tomcat8 restart}.join(' ')
      puts "mmmmmm"
  end
end
 


