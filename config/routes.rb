Wechat::Validator::Engine.routes.draw do

  #scope module: 'wechat/validator' do
  #  resources :server_validations, only: :index
  #end

  resources :server_validations, only: :index

end
