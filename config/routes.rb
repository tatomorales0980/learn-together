Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  resources :languages do
    delete 'remove'
  end
  
end
