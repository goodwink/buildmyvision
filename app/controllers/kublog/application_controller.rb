module Kublog
  class ApplicationController < ActionController::Base
    before_filter :require_admin
    
    helper_method :is_admin?
    helper_method :current_user
    
    def require_admin
      redirect_to root_path unless is_admin?
    end
    
    def current_user
      current_admin_user || super
    end
    
    def is_admin?
      admin_user_signed_in?
    end
    
  end
end
