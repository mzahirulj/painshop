Rails.application.routes.draw do
  resources :users
  resources :tshirts
  resources :devise

  root 'users#index'
  #get "tshirts/:user", to: "tshirts/user"

  #get "users/:users", to :"users#index"
  match ':controller (/:action(/:/id))', :via => :get

end
