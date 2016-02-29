Wechat::Validator::Engine.routes.draw do

  resources :server_validations, only: [ :index, :create ]

end
