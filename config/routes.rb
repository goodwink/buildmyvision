Buildmyvision::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  mount Kublog::Engine => "/blog(.:format)"
end
