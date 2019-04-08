Rails.application.routes.draw do
  root 'home#index'
  # devise_for :users, :controllers => {:registrations => "my_devise/registrations"}
  devise_for :users, controllers: { sessions: 'devise/sessions' }

  
  resources :languages do
    delete 'remove'
    post 'add'
  end
  devise_for :users
  root 'welcome#homepage'
end
