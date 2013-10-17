RailsBase::Application.routes.draw do
  resources :movies

  root to: 'dashboard#index'
  devise_for :users

  resources :albums, only: [:new, :create] do
    get :all, on: :collection
  end

  resources :users do
    resources :albums, except: [:new, :create]
  end

end
