Rails.application.routes.draw do
  root 'home#index'

  get '/columns/new', to: 'column#new'
  post '/columns', to: 'column#create'

  get '/cards/new', to: 'card#new'
  post '/cards', to: 'card#create'

  get '/card/:id', to: 'card#show'

  resources :columns
  resources :cards
end
