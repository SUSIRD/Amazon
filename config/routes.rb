Rails.application.routes.draw do
  root 'home#index'

  #get 'home', to: 'home#index'

  #get 'home/index'
  get '/home/index', to: 'home#index', as: 'cualquier_cosa'

  get '/home/:name', to: 'home#hello'
end
