Rails.application.routes.draw do
  resources :posts do
    resources :photos, only: [ :show, :new, :create, :destroy ]
  end

  root to: 'posts#index'
end
