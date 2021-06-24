Rails.application.routes.draw do
  devise_for :users
  resources :product_category_headings
  resources :product_categories do
    resources :products
  end  
  get '/product_category_headings/:product_category_heading_id/products', to: 'product_category#products'
  root 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
