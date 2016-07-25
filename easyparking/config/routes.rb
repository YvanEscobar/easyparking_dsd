Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  get 'home/index'
  get 'home/info'
  get 'home/faq'
  get 'home/tos'
  
  get 'parking/index'
  get 'parking/details'

  get 'booking/index'
  get 'booking/confirmation'  

  get 'user/login'
  get 'user/profile'
  get 'user/edit_profile'
  
  root 'home#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
