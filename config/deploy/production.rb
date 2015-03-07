server '178.62.85.99', user: 'dental-rag', roles: %w{web app db}

fetch(:default_env).merge!(rails_env: :production)

