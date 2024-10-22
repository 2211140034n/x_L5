Rails.application.routes.draw do
  resources :users
  resources :tweets
  resources :likes
  
  get 'top/main', as: 'main'  # 名前付きルートを設定
  
  post 'top/login'
  get 'top/logout'
  
  root 'top#main'
end