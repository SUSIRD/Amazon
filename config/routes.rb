Rails.application.routes.draw do

  devise_for :users
  # Index, Root or Home
  root 'home#index'

  resources :posts do
    resources :comments
  end

  resources :subscriptors, only: [:new, :create]

  # # Admin Routes
  get 'admin', to: 'admin#index'
  # get 'admin/index'
  # get 'admin/show'


  # get 'posts/index', to: 'posts#index'
  # post 'post/new', to: 'posts#new'

  # Home Routes
  # get '/home/index', to: 'home#index', as: 'cualquier_cosa'
  # get '/home/about', to: 'home#about'
  # get '/home/contact_us', to: 'home#contact_us'
  # get '/home/prices', to: 'home#prices'
  #
  # # Blog Routes
  # get 'blog/index'
  # get 'blog/edit'
  # get 'blog/new'
  # get 'blog/show'

end
