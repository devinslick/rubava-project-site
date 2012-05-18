# some bullshit comment just so things will be different

Rubava::Application.routes.draw do
  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"  
  get "sign_up" => "users#new", :as => "sign_up"
  resources :involvements
  resources :projects
  resources :members
  resources :users
  resources :sessions
  root :to => 'home#index'
end
