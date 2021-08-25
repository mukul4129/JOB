Rails.application.routes.draw do
  
  resources :candidates
  resources :rounds
  root "naukri#index"
 
  resources :naukris do
    resources :registrations
    resources :rounds
  end
  
  resource :sessions, only: [:new, :create, :destroy]
 
  resources :users
  get "signup" => "users#new"
  #get "naukri" => "naukri#index"
  
end
