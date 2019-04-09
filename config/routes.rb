Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  # devise_for :users, :controllers => {:registrations => "my_devise/registrations"}
  devise_for :users, controllers: { sessions: 'devise/sessions' }

  
  resources :languages do
    delete 'remove'
  end
  # devise_for :users
end
