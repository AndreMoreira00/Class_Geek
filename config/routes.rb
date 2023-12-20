Rails.application.routes.draw do
  resources :teewts
  devise_for :users
  resources :turmas
  root 'pages#home'

  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'index' => 'pages#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
