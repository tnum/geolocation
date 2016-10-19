Rails.application.routes.draw do

  resources :items, only: [:new, :create, :show, :index]

  root to: 'items#index'

end
