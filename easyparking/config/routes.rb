Rails.application.routes.draw do
  get 'parking/index'

  get 'parking/detail'
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
