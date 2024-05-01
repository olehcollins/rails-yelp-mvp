Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:create]
    # collection do
    #   get 'reviews/new', to: 'reviews#new', as: 'add_review'
    #   post '/reviews', to: 'reviews#create'
    # end
  end

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "restaurants#index"
end
