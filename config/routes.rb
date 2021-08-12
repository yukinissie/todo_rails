Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'column#home'

  get '/columns/new', to: 'column#new'
  post '/columns', to: 'column#create'

  get '/cards/new', to: 'card#new'
  post '/cards', to: 'card#create'

  get '/card/:id', to: 'card#show'

  resources :columns
  resources :cards
end
