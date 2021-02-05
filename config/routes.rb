Rails.application.routes.draw do
  
  resources :plays, only: [:index, :new, :create]

  get "/artists", to: "artists#index", as: "artists"
  get "/artists/new", to: "artists#new" , as: "new_artist"
  post "/artists", to:   "artists#create"
  get "/artists/:id", to: "artists#show", as: "artist"
  

  get "/instruments", to: "instruments#index", as: "instruments"



end
