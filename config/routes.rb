Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
  end

  namespace :admin do
    get 'users/create'
  end

  namespace :admin do
    get 'users/new'
  end

  namespace :admin do
    get 'users/destroy'
  end

  namespace :admin do
    get 'users/edit'
  end

  namespace :admin do
    get 'users/update'
  end

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
    resources :users, only: [:create, :new, :index, :destroy, :edit, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
