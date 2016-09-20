Rails.application.routes.draw do
  get 'welcome/homepage'

  #root 'welcome#homepage'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

  resources :nicknames
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
