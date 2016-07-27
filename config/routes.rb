Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get 'cooks/Produceavailable'

  root 'cooks#load'
  get "cooks/" => "cooks#index"
  get "cooks/new" => "cooks#new", as: :new_cook
  get "cooks/:id" => "cooks#show", as: :cook
  get "cooks/:id/edit" => "cooks#edit", as: :edit_cook
  post "cooks/" => "cooks#create"
  patch "cooks/:id" => "cooks#update"
  delete "cooks/:id" => "cooks#destroy"


  get "gardeners/" => "gardeners#index"
  get "gardeners/new" => "gardeners#new", as: :new_gardener
  get "gardeners/:id" => "gardeners#show", as: :gardener
  get "gardeners/:id/edit" => "gardeners#edit", as: :edit_gardener
  post "gardeners/" => "gardeners#create"
  patch "gardeners/:id" => "gardeners#update"
  delete "gardeners/:id" => "gardeners#destroy"

  get "produces/" => "produces#index"
  get "produces/new" => "produces#new", as: :new_produce
  get "produces/:id" => "produces#show", as: :produce
  get "produces/:id/edit" => "produces#edit", as: :edit_produce
  post "produces/" => "produces#create"
  patch "produces/:id" => "produces#update"
  delete "produces/:id" => "produces#destroy"

  resources :produceavailables do
    resources :produceselecteds
  end

  #
  # get "produceselecteds/" => "produceselecteds#index"
  # get "produceselecteds/new" => "produceselecteds#new", as: :new_produceselected
  # get "produceselecteds/:id" => "produceselecteds#show", as: :produceselected
  # get "produceselecteds/:id/edit" => "produceselecteds#edit", as: :edit_produceselected
  # post "produceselecteds/" => "produceselecteds#create"
  # patch "produceselecteds/:id" => "produceselecteds#update"
  # delete "produceselecteds/:id" => "produceselecteds#destroy"


  # get "produceavailables/" => "produceavailables#index"
  # get "produceavailables/new" => "produceavailables#new", as: :new_produceavailable
  # get "produceavailables/:id" => "produceavailables#show", as: :produceavailable
  # get "produceavailables/:id/edit" => "produceavailables#edit", as: :edit_produceavailable
  # post "produceavailables/" => "produceavailables#create"
  # patch "produceavailables/:id" => "produceavailables#update"
  # delete "produceavailables/:id" => "produceavailables#destroy"

  #
  #
  # get "gardeners/" => "gardeners#index"
  #
  # get "produces/" => "produces#index"
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
