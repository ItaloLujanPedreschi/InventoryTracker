Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root "sessions#new"

    resources :users, only: [:new, :show, :create]
    resource :session, only: [:new, :create, :destroy]
    resources :businesses, only: [:new, :show, :create, :update, :destroy]
    resources :items, only: [:new, :index, :show, :create, :update, :destroy]
    resources :units, only: [:new, :index, :show, :create, :update, :destroy]
end
