Rails.application.routes.draw do
  root to: 'pages#home'

  resources :restaurants do
    collection do
      # get 'restaurants/top', to: 'restaurants#top'
      get :top
    end

    member do
      # get 'restaurants/:id/chef', to: 'restaurants#chef'
      get :chef
    end

    resources :reviews, only: :create
  end

  # # Create
  # get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # post 'restaurants',    to: 'restaurants#create'

  # # Read (all)
  # get 'restaurants', to: 'restaurants#index'

  # # Read (one)
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # # Update (one)
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  # patch 'restaurants/:id',    to: 'restaurants#update'

  # # Delete (one)
  # delete "restaurants/:id", to: "restaurants#destroy", as: 'delete_restaurant'
end
