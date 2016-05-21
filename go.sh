rake forward_ports &&
RAILS_ENV=production rvmsudo rails s --port 80 --binding 0.0.0.0 &&
rake unforward_ports