Rails.application.routes.draw do
  get 'recipes/index'
  get 'recipes/destroy'
  get 'recipes/update'
  get 'recipes/create'
  get 'recipes/show'
  resources :items
  resources :recipes
  post '/items/:id/mark', to: 'items#mark', as: 'mark_item'
  post '/items/delete_all', to: 'items#delete_all', as: 'delete_all'
  post '/items/delete_all_marked', to: 'items#delete_all_marked', as: 'delete_all_marked'
  post 'recipes/delete_all', to: 'recipes#delete_all', as: 'delete_all_recipes'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
