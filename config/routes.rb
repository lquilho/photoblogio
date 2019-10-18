Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    resources :photos, only: [ :show, :destroy ]
  end

  root to: 'posts#index'
end
