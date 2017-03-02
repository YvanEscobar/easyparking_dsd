Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  get 'home/index'
  get 'home/info'
  get 'home/faq'
  get 'home/tos'
  
  get 'parking', to: 'parking#index'
  get 'parking/:district/:date/:time/:features', to: 'parking#index'
  post 'parking', to: 'parking#index'
  get 'parking/details/:id', to: 'parking#details', as: 'parkdetails'
  get 'parking/details/:id/:time', to: 'parking#details', as: 'parkdetailstime'

  get 'booking/confirmation/:booking_id', to: 'booking#confirmation'
  
  get 'booking/:parking_id', to: 'booking#index', as: 'booking'
  get 'booking/:parking_id/:time', to: 'booking#index', as: 'bookingtime'
  post 'booking/confirmation'
   
  #get 'user/login'
  #get 'user/profile'
  #get 'user/edit_profile'
  
  root 'home#index'

  resources :home do
  get :autocomplete_district_name, :on => :collection
  end

  get 'profile/:id' => "user#profile", as: 'user_profile'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
