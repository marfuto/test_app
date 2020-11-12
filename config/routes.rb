Rails.application.routes.draw do
  get 'signup' => 'users#new'
  root 'home_page#home'
end
