Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  resources :messages do
    resources :contents
  end
end
