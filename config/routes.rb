Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails, only: %i[show new create] do
    resources :doses, only: [:create, :index]
    # resources :reviews, only: [:index, :create, :new]
  end

  resources :doses, only: [:destroy]
  # get 'cocktails/:name', to: "cocktails#search", as: :cocktail_search
end