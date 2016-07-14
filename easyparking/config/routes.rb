Rails.application.routes.draw do
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

  get 'home/index'
  get 'home/details'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
