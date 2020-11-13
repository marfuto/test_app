Rails.application.routes.draw do
  
  get 'session/new'
  root 'home_page#home'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end
