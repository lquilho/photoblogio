Rails.application.routes.draw do
  resources :posts do
    resources :pictures, only: [ :index, :new, :create, :destroy ]
  end

  root to: 'posts#index'
end
