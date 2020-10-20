Rails.application.routes.draw do
  root to: "items#index"

  resources :items do
    collection do
      get 'search'
    end
  end
end
