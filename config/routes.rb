BestyOfTheDay::Application.routes.draw do

  devise_for :users, path_prefix: 'api/v1', controllers: { sessions: 'sessions', registrations: 'registrations' }

  namespace :api do
    namespace :v1 do
      devise_scope :user do

      end

      resources :users
    end
  end

  get "tweets", to: "tweets#index", as: "tweets_index"

  root 'home#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
end
