Rails.application.routes.draw do

  get 'events/index'

  get 'events/new'

  get 'events/show'

  root 'sessions#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show]
  resources :events, only: [:index, :new, :create, :show]
  resources :event_attendees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
