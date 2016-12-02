Rails.application.routes.draw do

  devise_for :users
  resources :articles do
    resources :comments
  end

  root 'articles#index'

  # Static pages
  get  '/about', to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end
