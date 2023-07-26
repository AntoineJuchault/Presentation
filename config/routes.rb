Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#index"
  get '/contact', to: 'contact_form#new', as: 'contact'
  post '/contact', to: 'contact_form#create' # Ajoutez cette ligne pour définir la route POST pour la création du formulaire de contact
end
