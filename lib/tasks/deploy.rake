require "UPnP"

port  =  80
proto = "TCP" # TCP or UDP

task :forward_ports do
  UPnP::UPnP.new.addPortMapping(port, port, proto, "ben-behar.name")
  puts "Used uPnP to obtain port: #{port}"
end

task :unforward_ports do
  begin
    UPnP::UPnP.new.deletePortMapping(port, proto)
    puts "Released #{proto}:#{port}"
  rescue UPnP::UPnPException
    puts "Couldn't find the port mappings"
  end
end