Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  resources :cocktails, only: [:show, :index, :new, :create, :destroy] do
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: [ :destroy ]

  resources :ingredients, only: :show
  root "cocktails#index"
end
