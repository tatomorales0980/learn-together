Rails.application.routes.draw do
  devise_for :users
  
  root 'home#index'
  
  resources :messages, only: [:index, :new, :create, :destroy] do
    resources :contents, only: [:index, :new, :create]
  end
  
  root 'welcome#homepage'
end
