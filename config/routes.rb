Buildmyvision::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users

  resources :customers
  resources :posts, path: 'lean-startup-development-blog'

  root to: "root#index"
  match 'about' => 'root#about', :as => :about
end
