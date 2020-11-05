Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks'}
  devise_scope :user do
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end
  
  resources :sessions, only: [:new, :create, :destroy]
  
   resources :guides, only: [:show] do 
    resources :hunts, only: [:index,:show]
  end

  resources :hunts, only:[:show,:index] do 
    resources :reviews, only:[:show, :index, :new]
  end
  
  resources :reviews, only: [:create, :update, :edit]
  resources :guides, only: [:index,:show]
   root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
