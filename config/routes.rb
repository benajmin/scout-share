Rails.application.routes.draw do
  get 'static_pages/about'
  get 'static_pages/faq'
  get 'static_pages/contact'

  resources :groups
  resources :events
  root 'events#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
