Rails.application.routes.draw do

  get '/top' => 'homes#top'
  post 'books' => 'books#create'
  get '/show' => 'books#show'
  resources :books
end
