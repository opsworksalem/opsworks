
cron 'hdfs_space.sh' do
  minute '*/2'
  user 'root'
  puts "okokokok"
  unless 'ps aux | grep tomcat8' != ""
      command %w{sudo service tomcat8 start}.join(' ')
  end
  
  
end
 


