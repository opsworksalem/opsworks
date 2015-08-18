chef_gem 'rufus-scheduler'
require 'rufus-scheduler'
scheduler = Rufus::Scheduler.new

scheduler.every '1m' do
  puts "okokokok"
  if `sudo service tomcat8 status`.include? "Tomcat servlet engine is not running"
    status = 'fail '
  else
    status = 'success '
  end
  status += Time.now.strftime("D%Y%m%dT%H%M%S")
  File.open('/var/log/tomcat8/status', 'a') { |file| file.puts status }
end
scheduler.join
