class PagesController < ApplicationController
  def welcome
    @current_nav_identifier = :dashboard
  end
end