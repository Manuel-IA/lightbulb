Rails.application.routes.draw do
  get 'bulb', to: 'bulbs#index'
  get 'change', to: 'bulbs#change'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
