Rails.application.routes.draw do
  devise_for :users 
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  get 'shop' => 'pages#shop', as: 'shop'

  resources :posts do
    resources :comments
  end
end
