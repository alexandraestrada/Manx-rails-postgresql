MegRails::Application.routes.draw do

  # get "auths/new"
  # get "auths/create"
  # get "auths/destroy"
  # get "items/index"
  # post "shopping_cart/add/:item_id" => 'shopping_carts#add', as: :add_item 
  resources :items
  # post 'shopping_cart_items/:item_id' => 'shopping_cart_items#create', as: :shopping_cart_item_by_item
  # get "shopping_carts/:id/edit" => 'shopping_cart#edit', as: :edit_shopping_cart
  resources :shopping_carts
  resources :users
  resources :shopping_cart_items
  resources :auths
  delete "auths" => "auths#destroy"
  resources :charges
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
