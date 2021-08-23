Rails.application.routes.draw do
  root "naukri#index"
  
  resources :naukris
  resources :registrations
  resources :users

  #get "naukri" => "naukri#index"
  
end
