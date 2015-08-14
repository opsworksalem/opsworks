require 'rufus-scheduler'
scheduler = Rufus::Scheduler.start_new

  scheduler.every '1m' do

    unless `ps aux | grep tomcat[8]` != ""
       puts "thought."
    end

  end

end
