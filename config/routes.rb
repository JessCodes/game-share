Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#index'
    resources :users

    resources :welcome, only: [:index]

    resources :sessions, only: [ :new, :create, :destroy ]

    get 'login' => 'sessions#new'
    get 'logout' => 'sessions#destroy'
end
