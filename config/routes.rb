Rails.application.routes.draw do
  root 'home#index'

  resources :survey_responses, only: [:new, :create]

  namespace :api do
    namespace :v1 do

      resources :surveys, only: [:create]

    end
  end

end
