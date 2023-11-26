Rails.application.routes.draw do

  get 'messeges/index'
  root to:"messeges#index"
end
