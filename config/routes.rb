Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # Ne pas oublier la ligne 5 sinon soucis plus loin
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # show toujours apres le new
  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
end

# Rails.application.routes.draw do
#   get    "restaurants",          to: "restaurants#index"

#   get    "restaurants/new",      to: "restaurants#new",  as: :new_restaurant
#   post   "restaurants",          to: "restaurants#create"

#   # NB: The `show` route needs to be *after* `new` route.
#   get    "restaurants/:id",      to: "restaurants#show", as: :restaurant

#   get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
#   patch  "restaurants/:id",      to: "restaurants#update"

#   delete "restaurants/:id",      to: "restaurants#destroy"
# end
