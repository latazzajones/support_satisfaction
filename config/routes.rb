Rails.application.routes.draw do
  root 'pages#welcome'

  get '/thank_you', to: 'pages#thank_you'

  get '/welcome', to: 'pages#welcome'

  namespace :admin do
    root 'surveys#index'
    resources :surveys, only: [:index, :show]
  end

  namespace :api do
    namespace :v1 do
      resources :surveys, only: [:create]
    end
  end

  scope module: 'public' do
    resources :survey_responses, only: [:new, :create]
  end

end
