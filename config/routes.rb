Rails.application.routes.draw do

  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]

  resources :games, only: [:index] do
    resources :tips, only: [:new, :create, :show]
  end

  resources :players, only: [:index, :new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
