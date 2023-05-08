Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'static_pages#index'
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#index'
  post '/users', to: 'users#create'
  get '/users', to: 'users#index'
  put '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'
end
