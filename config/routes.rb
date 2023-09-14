Rails.application.routes.draw do
  

#cart === open order
  post '/orders', to: 'orders#add_to_cart'
  patch '/orders/:order_item_id', to: 'orders#update_cart'
  delete '/orders/:order_item_id', to: 'orders#remove_from_cart'
  delete '/clear_cart', to: 'orders#clear_cart'

  post '/submit_order', to: 'orders#submit_order'

  get '/products', to: 'products#index'
  patch '/products', to: 'products#reset_inventory_levels'

  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
