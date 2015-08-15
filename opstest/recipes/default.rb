
cron 'hdfs_space.sh' do
  minute '*'
  user root
  puts "okokokok"
  data_dir = value_for_platform(
    "centos" => { "default" => "/srv/www/shared" },
    "ubuntu" => { "default" => "/srv/www/data" },
    "default" => "/srv/www/config"
  )
  
  directory data_dir do
    mode 0755
    owner 'root'
    group 'root'
    recursive true
    action :create
  end
end
 


