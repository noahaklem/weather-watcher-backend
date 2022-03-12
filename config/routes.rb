Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      resources :forecasts, only: [:index, :create]
      resources :users, only: [:index, :create]
      resources :sessions, only: [:create]
      post '/login', to: 'auth#create'
      post '/signup', to: 'users#create'
      delete '/', to: 'auth#delete'
    end
  end
end
