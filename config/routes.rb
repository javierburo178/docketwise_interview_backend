Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :document_stores, only: %i[index]
  get 'test', to: 'test#index'
end
