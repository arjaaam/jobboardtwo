Rails.application.routes.draw do

    get    '/',  to: 'jobs#new'
      post    '/create',  to: 'jobs#create'
    resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
