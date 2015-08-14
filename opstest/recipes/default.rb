chef_gem 'rufus-scheduler'
require 'rufus-scheduler'
scheduler = Rufus::Scheduler.new

scheduler.every '1m' do

	unless 'ps aux | grep tomcat[8]' != ""
		fork { exec "sudo service tomcat8 start" }
		Process.wait
	end

end

