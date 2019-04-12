Rails.application.routes.draw do
  devise_for :users,:controllers => { :registrations => "users/registrations" }
  resources :project_types, :project_roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#dashboard'
end
