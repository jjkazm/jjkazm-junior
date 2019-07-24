Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static_pages#home"

  get 'jquery', to: "static_pages#jquery"
  get 'query_optimizing', to: "static_pages#query_optimizing"
  resources :friends, only: [:create]
  resources :patients, only: [:create]
end
