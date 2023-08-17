Rails.application.routes.draw do
  resources :transactions
  resources :layouts
  resources :users

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
