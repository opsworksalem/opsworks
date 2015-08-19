cron 'crony' do
  minute '*'
  user 'root'
  command %w{ service tomcat8 stop}.join(' ')
end
