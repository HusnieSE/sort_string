Rails.application.routes.draw do
  get 'sort_string/index'
  post 'sort_string/index'
  root 'sort_string#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
