Blogger::Application.routes.draw do
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors

  resources :author_session, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_session#new'
  get 'logout' => 'author_session#destroy'
end
