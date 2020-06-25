Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/cocktails', to: 'cocktails#index', as: 'cocktail'
  get '/cocktails/new', to: 'cocktails#new', as: 'new_cocktail'
  post '/cocktails', to: 'cocktails#create'
  get '/cocktails/:id', to: 'cocktails#show'
end





#      Prefix Verb URI                      Pattern                                                                              Controller#Action
#   cocktails GET  /cocktails(.:format)      cocktails#index
#             GET  /cocktails/:id(.:format)  cocktails#show
#             GET  /cocktails/:id(.:format)  cocktails#new
#             POST /cocktails(.:format)      cocktails#create