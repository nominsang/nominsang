Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/home'
    resources :devlogs
    root 'dashboard#home'
  end
  get 'portal/home'
  get 'portal/about'
  get 'portal/blog'
  resources :devlogs
  root 'portal#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
