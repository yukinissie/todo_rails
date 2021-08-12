Rails.application.routes.draw do
  root 'home#index'

  get '/columns', to: 'column#index'
  get '/columns/new', to: 'column#new'
  post '/columns', to: 'column#create'
  delete '/columns/:id', to: 'column#destroy'
  get '/columns/:id/edit', to: 'column#edit'
  patch '/columns/:id', to: 'column#update'

  get '/cards/new', to: 'card#new'
  post '/cards', to: 'card#create'
  delete '/cards/:id', to: 'card#destroy'
  get '/columns/:id/edit', to: 'card#edit'
  patch '/columns/:id', to: 'card#update'

  get '/cards/:id', to: 'card#show'

  resources :columns
  resources :cards
end
