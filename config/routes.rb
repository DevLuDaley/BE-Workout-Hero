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
      resources :routines do
        resources :workouts
      end
    end
  end

  namespace :api do
  namespace :v1 do
    resources :workouts do
      resources :routines
    end
  end
end

    get '*path', to: 'application#fallback_index_html', constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
end
