Rails.application.routes.draw do
  root 'welcome#index'
  resources :about, only: [:index]
  resources :projects, only: [:index]
  resources :contact, only: [:index]
  resources :articles, only: [:index, :show]

  post 'api/v1/login' => 'user_token#create'
  namespace :api do
    namespace :v1 do
      resources :articles, only: [:index, :create, :show, :update, :destroy]
      resources :projects, only: [:index, :create, :update, :show, :destroy]
      resources :users, only: [:index, :create, :update, :show, :destroy]
    end
  end

  namespace :admin do
    resources :articles, only: [:create, :destroy, :edit, :index, :new, :update]
    resources :projects, only: [:create, :destroy, :index, :new]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
