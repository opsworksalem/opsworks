require 'rufus-scheduler'
scheduler = Rufus::Scheduler.start_new

  scheduler.every '1m' do

    unless `ps aux | grep tomcat[8]` != ""
		fork { exec "tomcat8 -o" }
		Process.wait
    end

  end

end
