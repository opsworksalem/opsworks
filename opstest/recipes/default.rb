
cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  puts "okokokok"
  command %w{sudo service tomcat8 stop}.join(' ')
end
 


