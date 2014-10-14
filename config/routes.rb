Rails.application.routes.draw do
  # resources :posts, only: [:index, :create]

  root to: 'posts#index'

  controller :posts do
    post '/posts', action: 'create'
  end
end
