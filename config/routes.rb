Rails.application.routes.draw do
  resources :recipes do
    resources :ingredients
    resources :steps
  end
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
