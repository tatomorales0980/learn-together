Rails.application.routes.draw do
  devise_for :users
  resources :languages do
    delete 'remove'
  end
  root 'home#index'
end
