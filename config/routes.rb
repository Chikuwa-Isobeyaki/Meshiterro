Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "homes/top" => "homes#top", as: "top"
  resources :post_images, only: [:new, :index, :show, :create, :destroy]do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only:[:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
