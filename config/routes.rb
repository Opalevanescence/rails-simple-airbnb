Rails.application.routes.draw do
  get 'flats/index'
  get 'flats/new'
  get 'flats/edit'
  get 'flats/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flats
end
