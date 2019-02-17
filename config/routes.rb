Rails.application.routes.draw do
  namespace :api do
    resources :riders
    resources :slogans
  end

  resources :riders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
