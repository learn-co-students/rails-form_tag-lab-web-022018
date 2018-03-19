Rails.application.routes.draw do
  resources :students, only: [:create, :new, :index, :show]
  resources :studentclasses
end
