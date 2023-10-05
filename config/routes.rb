Rails.application.routes.draw do
  root 'blog#index'
  resources :blog
  
  get 'blogs/:id/edit' => 'blog#edit'
  patch 'blogs/:id' => 'blog#update'
  get 'blogs/new' => 'blog#new'
  get 'blogs/:id' => 'blog#show'
  post 'blogs' => 'blog#create'
  delete 'blogs/:id' => 'blog#destroy'


end
