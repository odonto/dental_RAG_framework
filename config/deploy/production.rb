server 'ch-p-sample01', user: 'sample-app', roles: %w{web app db}
server 'ch-p-sample02', user: 'sample-app', roles: %w{web app}

fetch(:default_env).merge!(rails_env: :production)

