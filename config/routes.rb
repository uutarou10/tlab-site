Rails.application.routes.draw do
  root 'welcome#index'
  resources :about, only: [:index]
  resources :projects, only: [:index]
  resources :contact, only: [:index]
  resources :articles, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
