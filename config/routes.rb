Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Read (all)
  get '/restaurants', to: 'restaurants#index'
end
