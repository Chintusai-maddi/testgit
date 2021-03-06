Rails.application.routes.draw do
  resources :articles
  resources :chintus
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#get 'hello', to:'application#hello'
  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#about'
  get 'about',to: 'pages#about'
  get 'sai',to: 'chintus#chintu'
  get 'home',to: 'pages#home'
  get 'signup',to: 'customers#new'
  resources :customers,except:[:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
