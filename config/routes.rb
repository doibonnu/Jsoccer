Rails.application.routes.draw do
  devise_for :users
  resources :teams
  resources :players
  resources :cards do 
  resources :gradings
 end
  resources :columns
  resources :photos


  root 'players#index'

end
