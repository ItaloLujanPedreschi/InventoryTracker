Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root "items#index"

    resources :users, only: [:show, :create]
    resource :session, only: [:create, :destroy]
    resources :businesses, only: [:index, :show, :create, :update, :destroy]
    resources :items, only: [:index, :show, :create, :update, :destroy]
    resources :units, only: [:index, :show, :create, :update, :destroy]
end
