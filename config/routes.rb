Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'generate#index'
  get 'generate', to: 'generate#new'
  post 'generate', to: 'generate#create'
  get 'available', to: 'generate#available'
  post 'available', to: 'generate#back'
end
