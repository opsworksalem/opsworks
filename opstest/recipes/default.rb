
cron 'hdfs_space.sh' do
  minute '*'
  user 'root'
  puts "okokokok"
  <% unless 'ps aux | grep tomcat[8]' != "" -%>
      command %w{sudo service tomcat8 stop}.join(' ')
  <% end %>
  
  
end
 


