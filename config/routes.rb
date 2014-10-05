Rails.application.routes.draw do
  resources :dynamic_reports

  resources :users

  root to: 'users#index'
end
