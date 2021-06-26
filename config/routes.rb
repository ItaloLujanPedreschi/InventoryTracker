Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root "sessions#new"

    resources :users, only: [:new, :show, :create]
    resource :session, only: [:new, :create, :destroy]
    resources :businesses, only: [:new, :show, :create, :update, :destroy] do
        resources :items, only: [:new]
    end
    resources :items, only: [:show, :create, :update, :destroy] do
        resources :units, only: [:new]
    end
    resources :units, only: [:show, :create, :update, :destroy]
end
