class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :feature_filter

  def rollout?(name)
    if current_user
      $rollout.active? name, current_user
    else
      false
    end
  end

  def feature_filter
    rollout? controller_name.to_sym
  end
  
  helper_method :rollout?   
end
