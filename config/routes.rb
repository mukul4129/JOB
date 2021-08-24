Rails.application.routes.draw do
  
  root "naukri#index"
 
  resources :naukris do
    resources :registrations
  end
  
  resource :sessions, only: [:new, :create, :destroy]
 
  resources :users
  get "signup" => "users#new"
  #get "naukri" => "naukri#index"
  
end
