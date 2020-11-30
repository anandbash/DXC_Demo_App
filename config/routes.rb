require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
 
  get 'pages/home'
 
  devise_for :users, :controllers => {
    :omniauth_callbacks => "omniauth_callbacks"
  }

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  root to: "students#index"
  resources :students  
  #resource :search
  get '/search' => 'search#search_students'
  resources :messages

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
