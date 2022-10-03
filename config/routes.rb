Rails.application.routes.draw do
  get "/" do
    puts "welcome to rails"
  end
  resources :tms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
