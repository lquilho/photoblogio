 Rails.application.routes.draw do
  resources :posts do
    resources :post_photos, only: [ :index, :new, :create, :destroy ]
  end

  root to: 'posts#index'
end
