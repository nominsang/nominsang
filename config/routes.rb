Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  namespace :admin do
    get 'dashboard/home'
    resources :devlogs, :users
    root 'dashboard#home'
  end
  get 'portal/home'
  get 'portal/about'
  get 'portal/blog'
  resources :devlogs
  root 'portal#home'
end
