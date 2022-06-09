Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :planets, only: [ :index, :show ]

  get 'about',           to: 'pages#about',      as: :about
  get 'contact',         to: 'pages#contact',    as: :contact

  resources :flights, only: [ :index, :show ]
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
