Rails.application.routes.draw do
  devise_for :artists
  resources :artists do
  	member do
  	  patch 'save_photo'
      patch 'save_paintings'
  	end
    #resources :paintings
  end
  root to: 'artists#index'
  match '/signup', to: 'artists#index', via: 'get'
  match '/signin', to: 'artists#show', via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
