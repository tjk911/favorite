Favorite::Application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}

  resources :twitter_accounts do
    resources :keywords
  end

  authenticated do
    root to: "twitter_accounts#index", as: :authenticated_root
  end

  root to: "main#index"
end
