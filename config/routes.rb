Rails.application.routes.draw do
  resources :movies, only: [:show, :index, :create, :destroy] do
    resources :comments, only: [ :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
