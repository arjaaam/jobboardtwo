Rails.application.routes.draw do
 root 'jobs#index'
  get    '/',  to: 'jobs#new'
    get    '/show',  to: 'jobs#show'
   post    '/create',  to: 'jobs#create'
 resources :jobs
 resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
