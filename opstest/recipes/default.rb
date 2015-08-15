
cron 'hdfs_space.sh' do
  minute '*/2'
  user 'root'
  puts "okokokok"
  service "tomcat8" do
    supports :status => true
    action :start
  end
end
 


