Rails.application.routes.draw do
  resources :movies, only: [:show, :index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
