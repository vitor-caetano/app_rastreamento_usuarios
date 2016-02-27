Rails.application.routes.draw do

  resources :rastreamentos
  root to: 'apresentacao#home'

  resources :contatos, only: [:new, :create]

  get '/sobre', to: 'apresentacao#sobre'

  resources :rastreamentos, only: [:index, :create]

  match '*a', :to => 'errors#routing', via: :get

end
