Rails.application.routes.draw do
  devise_for :users
  resources :histories

  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'my_histories/:user', to: 'histories#my_histories', as: 'my_histories'
end
