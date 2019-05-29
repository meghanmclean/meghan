Rails.application.routes.draw do
    #get 'users/new'
  get '/signup', to: 'users#new'
  get 'static_pages/home'
  get 'static_pages/jobs'
  get 'static_pages/living'
  get 'static_pages/fun'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :users
end
