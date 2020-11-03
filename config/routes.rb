Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks'}
  resources :guides, only: [:show] do 
    resources :hunts, only: [:index,:show]
  end
  resources :guides, only: [:index,:show]
   root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
