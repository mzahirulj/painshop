Rails.application.routes.draw do
  resources :tshirts
  resources :devise

  root 'tshirts#buy'
  #get "tshirts/:user", to: "tshirts/user"
  match ':controller (/:action(/:/id))', :via => :get

end
