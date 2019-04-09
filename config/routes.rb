Rails.application.routes.draw do
<<<<<<< HEAD
  resources :posts
  root 'home#index'
  # devise_for :users, :controllers => {:registrations => "my_devise/registrations"}
  devise_for :users, controllers: { sessions: 'devise/sessions' }

  
  resources :languages do
    delete 'remove'
  end
  # devise_for :users
=======
  devise_for :users
  root 'welcome#homepage'
  
  get '/users/:id/matches', to: 'home#matches'
  
  
>>>>>>> master
end
