Rails.application.routes.draw do
  # devise_for :users, :controllers => {:registrations => "my_devise/registrations"}
  devise_for :users, controllers: { sessions: 'devise/sessions' }
  root 'home#index'
  
  resources :languages do
    delete 'remove'
    post 'add'
  end
  
end
