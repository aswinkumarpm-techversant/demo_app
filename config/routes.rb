Rails.application.routes.draw do
  root to: "homes#main_page"
  get 'homes/index'
  get 'homes/main_page'
  post 'logos/upload_image'
  resources :logos
  resources :texts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
