CraigslistSr::Application.routes.draw do
 root :to => 'categories#index'

 resources :posts
 resources :categories
 
end
