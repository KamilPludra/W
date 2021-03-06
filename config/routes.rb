WS::Application.routes.draw do



  

  root to: 'strony_statyczne#home', via: [:get, :post]

  match '/pomoc',    to: 'strony_statyczne#pomoc', via: 'get'
  match '/onas',   to: 'strony_statyczne#onas', via: 'get'
  match '/kontakt', to: 'strony_statyczne#kontakt', via: 'get'

  match 'calculate' => 'strony_statyczne#calculate', via: [:get, :post]

  match 'szereguj/calculate' => 'strony_statyczne#szereguj/calculate', via: [:get, :post]

  match '/szereguj',    to: 'strony_statyczne#szereguj', via: 'get'

  match '/szereg',    to: 'strony_statyczne#szereg', via: [:get, :post]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
