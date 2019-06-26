Rails.application.routes.draw do
  devise_for :artists
  resources :artists do
  	member do
  	  patch 'save_photo'
      patch 'save_paintings'
  	end
  end
  root to: 'artists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
