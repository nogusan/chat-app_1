Rails.application.routes.draw do

  devise_for :users
  get 'messeges/index'
  root to:"messeges#index"
end
