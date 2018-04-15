Rails.application.routes.draw do
    devise_for :users
  # controllers: {
  #        sessions: 'users/sessions',
  #        registrations: 'users/registrations'
  #      }

  get 'search',to: 'users#search'
  resources:interactions, only: :create

  root 'users#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# devise_for :users, controllers: {
#         sessions: 'users/sessions',
#         registrations: 'users/registrations'
#       }

#   get 'search',to: 'users#search'
#   resources:interactions, only: :create