Rails.application.routes.draw do
  constraints ProConstraint do
    namespace :pro, path: '/' do
      resources :home, only: :index
      root 'home#index'
    end
  end

  root 'home#index'
end
