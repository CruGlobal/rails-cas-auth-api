workers 4
queue_requests false
shared_dir = '/opt/puma'
rails_env = ENV['ENVIRONMENT'] || "production"
environment rails_env
bind "unix://#{shared_dir}/sockets/puma.sock"

stdout_redirect "/var/log/puma/stdout.log", "/var/log/puma/stderr.log", true

preload_app!
