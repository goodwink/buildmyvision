class RootController < ApplicationController
  respond_to :html

  def index
  end

  def about
  end

  def robots
    robots = File.read(Rails.root + "config/robots.#{Rails.env}.txt")
    render :text => robots, :layout => false, :content_type => "text/plain"
  end
end