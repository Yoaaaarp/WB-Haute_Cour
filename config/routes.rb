Rails.application.routes.draw do

  get 'account/index'

  resources :users
  #get 'session/new'

  #get 'session/create'

  #get 'session/destroy'

  resources :wines
  resources :events


  get 'contact/index'


  
  get 'contact/index'

  #get 'admin/index'


  get 'event/index'

  get 'catalogue/index'

  get 'welcome/index'

  resources :categories
  resources :wines
  resources :bottles do
    member do
      post :creer_link
    end
  end
  resources :statuses
  resources :orders do
    collection do
      post :submit_order
    end
  end



  resources :events
  resources :addresses
  resources :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get 'admin' => 'admin#index'
  resources :sessions do
    collection do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end
  end

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
