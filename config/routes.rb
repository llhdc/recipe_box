Rails.application.routes.draw do
  get 'steps/new'

  resources :recipes do
  get 'home/index'
    resources :ingredients, only: [:new]
    resources :steps, only: [:new]
  end
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
