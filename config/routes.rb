Rails.application.routes.draw do
  resources :items
  post '/items/:id/mark', to: 'items#mark', as: 'mark_item'
  post '/items/delete_all', to: 'items#delete_all', as: 'delete_all'
  post '/items/delete_all_marked', to: 'items#delete_all_marked', as: 'delete_all_marked'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
