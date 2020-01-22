Rails.application.routes.draw do
  constraints ProConstraint do
    namespace :pro do
      resources :home, only: :index
    end
  end

  root 'home#index'
end
