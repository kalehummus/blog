Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root  'pages#home'
  get 'about', to: 'pages#about'
  get 'api', to: "pages#food_truck_cuisine"

  resources :articles
  # resources gives us a new article path, post, edit, patch, delete, show, index, --> rake routes
end
