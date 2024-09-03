Rails.application.routes.draw do
  get 'home' => 'static_page#home'
  get 'help' =>  'static_page#help'
  get 'about' =>  'static_page#about'
  get 'contact' =>  'static_page#contact'
  get 'signup' => 'users#new'
  resources :microposts
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'static_page#home'
end
