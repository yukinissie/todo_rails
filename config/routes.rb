Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'to_do#home'

  get '/new_column', to: 'to_do#new_column'
  post '/new_column', to: 'to_do#create_column'

  get '/new_card', to: 'to_do#new_card'
  post '/new_card', to: 'to_do#create_card'
end
