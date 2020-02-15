Rails.application.routes.draw do
  resources :ratings
  resources :landlords
  resources :tenants
  resources :properties
  root :to => 'application#dashboard'

  devise_for :users



    # Session routes for Authenticatable (default)
#     new_user_session GET  /users/sign_in                    {:controller=>"devise/sessions", :action=>"new"}
#     user_session POST /users/sign_in                    {:controller=>"devise/sessions", :action=>"create"}
# destroy_user_session GET  /users/sign_out                   {:controller=>"devise/sessions", :action=>"destroy"}

# # Password routes for Recoverable, if User model has :recoverable configured
# new_user_password GET  /users/password/new(.:format)     {:controller=>"devise/passwords", :action=>"new"}
# edit_user_password GET  /users/password/edit(.:format)    {:controller=>"devise/passwords", :action=>"edit"}
#    user_password PUT  /users/password(.:format)         {:controller=>"devise/passwords", :action=>"update"}
#                  POST /users/password(.:format)         {:controller=>"devise/passwords", :action=>"create"}

# # Confirmation routes for Confirmable, if User model has :confirmable configured
# new_user_confirmation GET  /users/confirmation/new(.:format) {:controller=>"devise/confirmations", :action=>"new"}
# user_confirmation GET  /users/confirmation(.:format)     {:controller=>"devise/confirmations", :action=>"show"}
#                  POST /users/confirmation(.:format)     {:controller=>"devise/confirmations", :action=>"create"}



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
