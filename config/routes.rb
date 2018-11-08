Rails.application.routes.draw do


  get 'blog/index'
  get 'blog/edit'
  get 'blog/new'
  get 'blog/show'
  #get 'home', to: 'home#index'

  #get 'home/index'
  get '/home/index', to: 'home#index', as: 'cualquier_cosa'

  #get '/home/:name', to: 'home#hello'

  get '/home/about', to: 'home#about'
  get '/home/contact_us', to: 'home#contact_us'
  get '/home/prices', to: 'home#prices'

  root 'home#index'

end
