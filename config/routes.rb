Rails.application.routes.draw do
  resources :subjects
  root 'subjects#index'

  namespace :api, format: "json" do
    namespace :v1 do
      resources :subjects
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
