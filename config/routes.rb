Rails.application.routes.draw do
  devise_for :users
  resources :cards
  resources :projects
  root 'welcome#index'
end
