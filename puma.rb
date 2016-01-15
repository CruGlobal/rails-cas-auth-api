workers 4
worker_timeout 600
shared_dir = '/opt/puma'
rails_env = ENV['ENVIRONMENT'] || "production"
environment rails_env
bind "unix://#{shared_dir}/sockets/puma.sock"

stdout_redirect "/var/log/puma/stdout.log", "/var/log/puma/stderr.log", true
