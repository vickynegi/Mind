Rails.application.routes.draw do
  devise_for :artists
  resources :artists
  root to: 'artists#index'
  match '/signup', to: 'artists#index', via: 'get'
  match '/signin', to: 'artists#show', via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
