server 'example.com', user: 'homepage_client', roles: %w{web app db}

fetch(:default_env).merge!(rails_env: :integration)