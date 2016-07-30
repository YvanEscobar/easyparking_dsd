Rails.application.routes.draw do
  get 'user/editprofile'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/editperfil'
  get 'home/perfil'
  get 'parking/index'
  get 'parking/detail'
  get 'booking/index'
  get 'search/index'
  get 'search/details'
  get 'home/index'
  root 'home#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  get 'head/termycond'
  get 'head/info'
  get 'head/pregyresp'
  get 'home/details'
  get 'user/login'
  get 'profile/:id' => "user#profile", as: 'user_profile'
  get 'home/index'
  get 'home/details'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
