Rails.application.routes.draw do
  resources :bundles
  resources :articles do
    resources :publishers, module: :articles
  end

  resources :posts do
    resources :publishers, module: :posts
  end
  
  root "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end