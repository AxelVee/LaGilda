CastingUP::Application.routes.draw do
  
  







  


  

  

  resources :comments

  

  resources :boards do
    resources :conversations
  end
  resources :teachers do
resources :lessons
resources :votes
end
  devise_for :admins

  mount RailsAdmin::Engine => '/rails_admin', :as => 'rails_admin'

  resources :events 


  devise_for :users
  devise_scope :user do
    match "/signup" => "devise/registrations#new"
    match "/signout" => "devise/sessions#destroy"
    match "/signin" => "devise/sessions#create"
    match "/newconfirmation" => "devise/confirmations#new"
    match "/editprofile" => "devise/registrations#edit"
  end


   root :to => "teachers#index"
  
  match '/about', :to => 'home#about'
  
  match '/termsofuse', :to => 'home#termsofuse'

  match '/newshows' , :to => 'events#new' 
  
  match '/mostra', :to => 'events#index'
  
 match '/forum', :to => 'boards#index'
 
 match '/search', :to => 'teachers#search'
 
 
 
 get '/boards/:board_id/conversations/:id/reply' => "conversations#reply", :as => :reply_board_conversation
post '/boards/:board_id/conversations/:id/reply' => "conversations#save_reply", :as => :reply_board_conversation
  get '/teachers/:teacher_id/vote' => "teachers#vote", :as => :vote_teacher
post '/teachers/:teacher_id/vote' => "teachers#save_vote", :as => :vote_teacher
# match '/events/:id' => 'events#show'
   
match '/contact' => 'contact#new', :as => 'contact', :via => :get
match '/contact' => 'contact#create', :as => 'contact', :via => :post
  
 match '/booking' => 'booking#new', :as => 'booking', :via => :get
match '/booking' => 'booking#create', :as => 'booking', :via => :post
   
  
  
  get "events/show"
  
  get "home/about"

get "user/new"

  get "home/posts"

  get "home/news"
  
end
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
  # match ':controller(/:action(/:id(.:format)))'
 