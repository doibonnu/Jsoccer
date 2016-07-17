Rails.application.routes.draw do
  devise_for :users
  resources :teams
  resources :players
  resources :cards
  resources :gradings
  resources :columns
  resources :photos


  root 'players#index'

end
