# require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  devise_for :users
  #root 'jobs#index'
  root 'pages#home'

  get "/pages/home" => "pages#home"
  get "/pages/quiz" => "pages#quiz" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
