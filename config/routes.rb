Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  get 'shop' => 'pages#shop', as: 'shop'

  resources :posts do
    resources :comments
  end
end
