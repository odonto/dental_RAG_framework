# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'homepage_client'
set :repo_url, 'git@github.com:NHSChoices/homepage_client.git'

set :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :deploy_to, '/var/apps/homepage_client'

secret_token = ENV['SECRET_TOKEN']
rails_env    = ENV['RAILS_ENV']
api_key      = ENV['API_KEY']
# set :format, :pretty
# set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set :assets_prefix, 'homepage_client/assets'

set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.1.2'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

unicorn_pid = "/var/apps/homepage_client/current/tmp/pids/unicorn.pid"
set :default_env, {
  'PATH'         => "/home/homepage_client/.rbenv/shims:$PATH",
  'SECRET_TOKEN' => "#{secret_token}",
}

set :keep_releases, 10

namespace :deploy do

  desc 'Install bundler gem'
  task 'install_bundler_gem' do
    on roles(:app) do
      within fetch(:release_path) do
        execute "~/.rbenv/shims/gem install bundler"
      end
    end
  end

  before :updating, :install_bundler_gem

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      within fetch(:current_path) do
        info "Restarting unicorn"
        execute "if [ -f '#{unicorn_pid}' ]; then kill `cat #{unicorn_pid}`; fi;"
        execute "API_KEY=#{api_key} SECRET_TOKEN=#{secret_token} ~/.rbenv/shims/bundle exec unicorn_rails -c config/unicorn.rb -E #{rails_env} -D"
      end
    end
  end

  after :finishing, :restart

end