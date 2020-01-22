Rails.application.routes.draw do
  constraints ProConstraint do
    namespace :pro, path: '/' do
      resources :home, only: :index
      root 'home#index'
    end
  end

  constraints subdomain: 'www' do
    resources :home, only: :index
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
