Rails.application.routes.draw do

  get '/top' => 'homes#top'
  post 'books' => 'books#create'
  resources :books
end
