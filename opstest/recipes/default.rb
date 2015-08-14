chef_gem 'rufus-scheduler'
require 'rufus-scheduler'
scheduler = Rufus::Scheduler.new

scheduler.every '1m' do

	
	fork { exec "sudo service tomcat8 start" }
	Process.wait


end

