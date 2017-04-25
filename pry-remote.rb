require 'socket'
require 'timeout'
 
def is_port_open?(ip, port)
  begin
    Timeout::timeout(1) do
      begin
        s = TCPSocket.new(ip, port)
        s.close
        return true
      rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH
        return false
      end
    end
  rescue Timeout::Error
  end
 
  return false
end
 
puts 'Waiting for remote pry session to be available on port 9876'
 
while true do
  if is_port_open?('127.0.0.1', 9876)
    system('pry-remote')
    puts 'Waiting for remote pry session to be available on port 9876'
  else
    sleep 1
  end
end
