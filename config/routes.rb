Rails.application.routes.draw do
  root 'home#index'

  namespace :admin do
    root 'surveys#index'
    resources :surveys, only: [:index, :show]
  end

  namespace :api do
    namespace :v1 do

      resources :surveys, only: [:create]

    end
  end

end
