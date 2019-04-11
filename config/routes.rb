Rails.application.routes.draw do
  resources :posts
  
  #root 'messages#index'
  root 'welcome#homepage'
  
  # devise_for :users, :controllers => {:registrations => "my_devise/registrations"}
  
  devise_for :users, controllers: { sessions: 'devise/sessions' }
  
  resources :messages, only: [:index, :new, :create, :destroy, :show] do
    resources :contents, only: [:index, :new, :create]
  end
  
  get '/users/:id/matches', to: 'home#show', as: :match
  
  resources :languages do
    delete 'remove'
  end
end
