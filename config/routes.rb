Rails.application.routes.draw do
  root "foos#index"

  resources :foos do
    resources :bars
  end
end
