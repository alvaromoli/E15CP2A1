Rails.application.routes.draw do
  devise_for :user, controllers: {
       registrations: 'users/registrations'
  }
  get 'histories/mylist', to: 'histories#list'
  resources :histories
  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
