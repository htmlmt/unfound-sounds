UnfoundSounds::Application.routes.draw do
  resources :logins
  resources :writers
  
  get "/" => 'pages#home', :as => :home
  get "/discover" => 'pages#discover'
  get "/donate" => 'pages#donate'
  get "/found" => 'pages#found'
  get "/city/:city" => 'pages#city_unfound'
  get "/found/:city" => 'pages#city_found'

  get "/album/:url" => 'pages#album', :as => :view_album
  get "/album/:url/edit" => 'pages#edit', :as => :edit_album
  get "/add" => 'pages#add', :as => :add_album
  post "/album" => 'pages#save_album', :as => :save_album
  post "/album/:url/edit" => 'pages#edit_album', :as => :update_album
  post "/album/:url/found" => 'pages#found_album', :as => :found_album
  post "/album/:url/delete" => 'pages#delete', :as => :delete_album
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
