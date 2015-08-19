chef_gem 'rufus-scheduler'
require 'rufus-scheduler'
scheduler = Rufus::Scheduler.new

scheduler.every '1m' do
   if `sudo service tomcat8 status`.include? "Tomcat servlet engine is not running"
     status = 'fail '
     fork { exec "sudo service tomcat8 restart" }
   else
     status = 'success '
   end
   status += Time.now.strftime("D%Y-%m-%dT%H:%M:%S ")
   status += `hostname`
   File.open('/var/log/tomcat8/status', 'a') { |file| file.puts status }
   scheduler.join
end

