class PagesController < ApplicationController
  def welcome
    @current_nav_identifier = :dashboard
  end

  def healthcheck
    # haproxy will point here, make sure it fails if server is not up - call external dependencies
  end
end
