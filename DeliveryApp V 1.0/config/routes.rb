Rails.application.routes.draw do

  resources :precios
  resources :categorias
  resources :detalle_pedidos
  resources :pedidos
  resources :repartidors
  resources :menus
  resources :ingrediente_platos
  resources :platos
  resources :ingredientes
  resources :clientes
  resources :empresas
  devise_for :usuarios,  controllers: { sessions: "usuarios/sessions", registrations: "usuarios/registrations", 
  passwords: "usuarios/passwords"  }, :path_names => {:sign_in => 'entrar', :sign_up => 'registrar', :sign_out => 'salir'}
  as :usuario do
    get 'sign_in' => 'usuarios/sessions#new', :as => :new_usuario_session_path
    get 'sign_up' => 'usuarios/registrations#create', :as => :usuario_registration_path
    delete 'sign_out' => 'usuarios/sessions#destroy', :as => :destroy_usuario_session_path
    get 'new' => 'usuarios/sessions#destroy', :as => :new_usuario_password_path
    
  end


  resources :roles
  resources :usuarios

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pedidos#new'

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
