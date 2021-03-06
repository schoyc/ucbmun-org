Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  # get 'attractions/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'committees/comingsoon'

  get 'committees/unesco'

  get 'committees/nba'

  get 'committees/disec'

  get 'committees/fao'

  get 'committees/legal'

  get 'committees/unsc'

  get 'committees/maumau'

  get 'committees/mormons'

  get 'committees/mexico'

  get 'committees/lenin'

  get 'committees/bangladesh'

  get 'committees/asiafin'

  get 'committees/thailand'

  get 'committees/teutonic'

  get 'committees/hongkong'

  get 'committees/government'

  get 'committees/rebels'

  get 'committees/adhoc'

  get 'adhoc_application' => 'committees#adhoc_application'

  get 'commitees/adhoc_application'

  root 'static_pages#index'

  get 'pdf' => 'static_pages#pdftest'

  get 'home' => 'static_pages#home'
  get 'committees' => 'static_pages#committees'
  get 'sponsors' => 'static_pages#sponsors'
  get 'contact' => 'static_pages#contact'
  get 'venue' => 'static_pages#venue'
  get 'schedule' => 'static_pages#schedule'
  get 'fees' => 'static_pages#fees'
  get 'secretariat' => 'static_pages#secretariat'
  get 'explore' => 'static_pages#explore'
  get 'welcome' => 'static_pages#welcome'
  get 'resources' => 'static_pages#resources'
  get 'munstore' => 'charges#munstore'
  get 'paymentsuccess' => 'static_pages#paymentsuccess'
  get 'hilton' => 'attractions#hilton'
  get 'app_privacy_policy' => 'committees#app_privacy_policy'

  get '/muncharge' => 'charges#muncharge'

  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  get 'loggedinregistration' => 'users#registrationerror'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  resources :charges
  resources :attractions
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  get 'listofregistrations' => 'users#index'

  get 'conferencepayment' => 'charges#new'
  get 'sponsorship' => 'charges#sponsorship'
  # get 'users/:id/balance' => 'users#balance'
  get 'users/:id/balance' => 'users#balance', as: :balance
  get 'users/:id/delegation' => 'users#delegation', as: :delegation
  get 'users/:id/forms' => 'users#forms', as: :forms
  get 'users/:id/settings' => 'users#settings', as: :settings

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'application#hello'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)


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
