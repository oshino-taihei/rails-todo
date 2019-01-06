Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end
  root 'todos#index'
  resources :todos

end
