server 'example.com', user: 'rails_sample', roles: %w{web app db}

fetch(:default_env).merge!(rails_env: :integration)