Rails.application.routes.draw do
  get 'maps/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
  get 'topics/new'

  get 'sessions/new'

  root 'pages#top'
  

  get    '/login',   to: 'sessions#new'
  #ログインページ表示
  post   '/login',   to: 'sessions#create'
  #Sessionを作成
  delete '/logout',  to: 'sessions#destroy'
  #Sessionを削除
  resources :users
  #一般的なrouting一括指定
  resources :courts
  
  get 'maps/index'
  root to: 'maps#index'
  resources :maps, only: [:index]
  #map作成
  end
