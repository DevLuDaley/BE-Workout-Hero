# frozen_string_literal: true
# root 'welcome#main'

Rails.application.routes.draw do
  root to: 'welcome#index'
# root 'welcome#index'
  namespace :api do
    namespace :v1 do
      resources :workouts, :routines
    end
  end
end
