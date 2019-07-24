Rails.application.routes.draw do
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static_pages#home"

  get 'jquery', to: "static_pages#jquery"
  get 'query_optimizing', to: "static_pages#query_optimizing"
  resources :friends, only: [:create, :show]
  resources :patients, only: [:create]
end
