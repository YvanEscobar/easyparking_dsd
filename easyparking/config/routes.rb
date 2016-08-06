Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  get 'home/index'
  get 'home/info'
  get 'home/faq'
  get 'home/tos'
  root 'home#index'

  get 'parking/index'
  get 'parking/details'

  get 'booking/index'
  get 'booking/confirmation'  

  get 'search/index'
  get 'search/details'

  resources :home do
  get :autocomplete_district_name, :on => :collection
  end

  get 'profile/:id' => "user#profile", as: 'user_profile'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
