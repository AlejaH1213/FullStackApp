Rails.application.routes.draw do
  get '/blogs/new' => 'blog#new'
  get 'blogs/:id' => 'blog#show'
  root 'blog#index'
end
