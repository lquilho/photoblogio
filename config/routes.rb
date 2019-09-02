Rails.application.routes.draw do
  resources :posts do
    resources :photos, only: [ :new, :create ]
  end

  root to: 'posts#index'
end
