Rails.application.routes.draw do
  root "naukri#index"

 
  resources :naukris 
  
  resources :registrations
 
  resources :users
  get "signup" => "users#new"
  #get "naukri" => "naukri#index"
  
end
