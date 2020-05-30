Rails.application.routes.draw do
  devise_for :users
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'
  resources :posts do
    resources :comments
  end

  resources :tags, only: [:show]
end
