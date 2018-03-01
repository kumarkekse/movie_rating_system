Rails.application.routes.draw do
  devise_for :users

  resources :movies do
    collection do
      post :import
    end
  end

  resources :reviews do
    member do
      post :replies
    end
  end

  root 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
