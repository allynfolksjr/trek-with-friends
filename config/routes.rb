TrekWithFriends::Application.routes.draw do

  resources :series, only: [:index, :show] do
    resources :season, only: [:index, :show]
  end

  resources :episode, only: [:show, :index]

  get '/auth/google_oauth2/callback', to: 'sessions#create', as: 'oauth2_callback'
  get 'signout', to: 'sessions#destroy', as: 'signout'

  # get "episodes", to: "episode#index"
  # get "episodes/:id", to: "episode#show"
  # get "seasons", to: "season#index"
  # get "seasons/:id", to: "season#show"
  # get "series", to: "series#index"
  # get "series/:id", to: "series#show"
  get "static/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static#index'

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
