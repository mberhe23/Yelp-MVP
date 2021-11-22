Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurants#show'
  # get '/restaurants/:restaurant_id', to: 'reviews#show'
  # get '/restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  # post '/restaurants/:restaurant_id/reviews', to: 'reviews#show'
  resources :restaurants do
    collection do
      get :index
      get :new
      get :show
    end
    member do
      get :review
    end
  end
end
