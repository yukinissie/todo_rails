Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'column#home'

  get '/new_column', to: 'column#new'
  post '/new_column', to: 'column#create'

  get '/new_card', to: 'card#new'
  post '/new_card', to: 'card#create'

  get '/card/:id', to: 'card#show'

  resources :card
end
