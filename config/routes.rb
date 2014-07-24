Ojt1::Application.routes.draw do
  

  resources :forums do
    resources :replies
  end

  ##get "home/index"
  #get "devise/sessions"
  get "home/homepage"
  get "home/dashboard"
  
  #get "devise/sessions"
  
  resources :home
  root to: 'home#homepage'
  
  devise_scope :employee do
    get 'login', to: 'devise/sessions#new'
  end
  
  devise_for :employees, :controller => { :registration => 'registration'}
  match 'dashboard' => 'home#dashboard'
  

<<<<<<< HEAD

  resources :chattings
   #get '/message' => 'chattings#new', :as => :new
   # root to: 'chattings#news'

  resources :user_msgs


  resources :chatiws


  #resources :msg_chat_rooms


  resources :room_messages
   #get '/chat1' => 'room_messages#new', :as => :new

  resources :chatcontents


  #get "chatmsg/index"
  resources :chatmsg
    root to: 'chatmsg#index'

  get "chatmsg/create"

  get "room/index"

  get "room/new"

  resources :chat_rooms
    #root to: 'chat_rooms#new'
    #get '/chats' => 'chat_rooms#new', :as => :chat
  resources :chats
   root to: 'chats#index'

  

 # get "chats/room"

 get '/chatroom' => 'chats#room', :as => :chat

 get '/login' => 'sessions#new', :as => :login
 post '/login' => 'sessions#create', :as => :login
 #get '/login' => 'chats#room', :as => :chat
 

 # get "sessions/new"

  #get "sessions/create"
=======
  resources :employees
  root to: 'employees#index'
>>>>>>> a5fa04c9126fb944b4ee80886f7e71ade6159263

  resources :cleaning
  root to: 'cleaning#index'

  #resources :cleaning
  #root to: 'cleaning#index'

  resources :random_numbers do
    collection { post :import }
  end


  resources :employeerandoms do
    collection { post :import }
  end
  root to: 'employeerandoms#index'


  get "welcome/homepage"
  get "welcome/loginpage"
  get "welcome/random"
  get "welcome/chatroom"
  root :to => 'home#index'

  #get "home#index"
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
