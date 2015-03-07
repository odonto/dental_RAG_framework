if %w(development test).include? Rails.env
  require 'jslint/tasks'
  JSLint.config_path = '.jslint.yml'
end
