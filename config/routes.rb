Rails.application.routes.draw do
  post '/encode', to: 'shortened_urls#encode'
  post '/decode', to: 'shortened_urls#decode'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
