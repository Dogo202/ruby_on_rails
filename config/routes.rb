Rails.application.routes.draw do
  root 'static_page#home'
  get    'home'    => 'static_page#home'
  get    'help'    => 'static_page#help'
  get    'about'   => 'static_page#about'
  get    'contact' => 'static_page#contact'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  #get    'logout'  => 'sessions#destroy'

  resources :microposts, only: [:create, :destroy]
  # resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
