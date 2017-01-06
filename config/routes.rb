Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#index'
    resource :users

    resources :welcome, only: [:index]

    resources :sessions, only: [ :new, :create, :destroy ]

    resources :games do
      resources :comments, only: [:new, :create, :destroy]
    end
    get 'login' => 'sessions#new'
    get 'logout' => 'sessions#destroy'

    resources :followships, only: [:create, :destroy]
end
