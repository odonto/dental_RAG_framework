appUser = "sample-app"

root = "/var/apps/#{appUser}/current"


# The rule of thumb is to use 1 worker per processor core available, 
# however since we'll be hosting many apps on this server, 
# we need to take a less aggressive approach
wp = ENV['UNICORN_WORKER_PROCESSES'].nil? ? 1 : ENV['UNICORN_WORKER_PROCESSES'].to_i

worker_processes wp

# We deploy with capistrano, so "current" links to root dir of current release
working_directory root

# set unicorn username and group
user "#{appUser}", "#{appUser}"

# Listen on unix socket
listen "/tmp/unicorn.#{appUser}.sock", :backlog => 64

#Location of PID file
pid "#{root}/tmp/pids/unicorn.pid"

stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"
