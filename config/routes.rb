Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/tickets/generate', to: 'tickets#generate'
  get '/tickets', to: 'tickets#index'
  get '/ticket_number', to: 'tickets#ticket_number'

end
