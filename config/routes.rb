# frozen_string_literal: true
# root 'welcome#main'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
# root 'welcome#index'
  namespace :api do
    namespace :v1 do
      resources :workouts, :routines#, :welcome #, only: [:index, :update]# , only: [:index, :update], :routine
    end
    # root to: 'welcome#index'
  end
  # root 'welcome#index'
  # root to: 'welcome#index'
  # root to: 'pages#main'
end
