require "UPnP"

port  =  4277
proto = "TCP" # TCP or UDP

task :forward_ports do
  UPnP::UPnP.new.addPortMapping(80, port, proto, "ben-behar.name")
  puts "Used uPnP to obtain port: 80->#{port}"
end

task :unforward_ports do
  begin
    UPnP::UPnP.new.deletePortMapping(80, proto)
    puts "Released #{proto}:80->#{port}"
  rescue UPnP::UPnPException
    puts "Couldn't find the port mappings"
  end
end