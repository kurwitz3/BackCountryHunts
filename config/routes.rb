Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks'}
  
  devise_scope :user do
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end
  
  
  resources :guides, only: [:show] do 
    resources :hunts, only: [:index,:show]
    end

  resources :hunts, only:[:show,:index] do 
    resources :reviews, only:[:show, :index, :new,]
  end
  
  resources :reviews, only: [:index, :update,:create, :edit,:destroy]
  
  resources :guides, only: [:index,:show]

  resources :users, only:  [:index, :show]

  resources :welcome, only: [:show]

   root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
