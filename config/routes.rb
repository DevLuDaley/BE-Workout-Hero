# frozen_string_literal: true
# root 'welcome#main'
# get '*path', to: 'application#fallback_index_html', constraints: ->(request) do
#     !request.xhr? && request.format.html?
#   end

Rails.application.routes.draw do
  root to: 'welcome#index'
# root 'welcome#index'


  namespace :api do
    namespace :v1 do
      resources :workouts, :routines
    end
  end

    get '*path', to: 'application#fallback_index_html', constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
end
