Rails.application.routes.draw do

  root 'products#index'

  resources :products

  resource :cart, only: [:show] do
    post "add", path: "add/:id"
  end
end
