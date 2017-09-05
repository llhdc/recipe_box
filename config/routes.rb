Rails.application.routes.draw do
  resources :recipes
  get 'home/index'

  resources :ingredients, only: [:show, :new]
  get 'ingredients/' => 'ingredients#index'

  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
