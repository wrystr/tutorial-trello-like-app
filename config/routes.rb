Rails.application.routes.draw do
  devise_for :users
  resources :cards
  resources :comments
  resources :projects
  root 'welcome#index'
end
