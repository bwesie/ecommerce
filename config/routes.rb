Rails.application.routes.draw do
  get 'orders/your_orders'

  devise_for :users
  resources :categories
  resources :products

  post 'add_to_cart' => 'cart#add_to_cart'

  post 'delete_from_cart' => 'cart#delete_from_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  post 'cancel_checkout' => 'cart#cancel_checkout'

  post 'order_complete' => 'cart#order_complete'

  get 'your_orders' => 'orders#your_orders'
  
  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  root 'storefront#all_items'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
