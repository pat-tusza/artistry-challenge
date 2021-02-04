Rails.application.routes.draw do
  
  resources :plays

  get "/artists", to: "artists#index", as: "artists"
  get "/artists/:id", to: "artist#show", as: "artist"
end
