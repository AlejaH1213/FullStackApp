Rails.application.routes.draw do
  root 'blog#index'
  resources :blog, except: [:new]
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  
  get 'blogs/:id/edit' => 'blog#edit'
  delete 'blogs/:id' => 'blog#destroy'
  patch 'blogs/:id' => 'blog#update'
  get 'blogs/:id' => 'blog#show'
  post 'blogs' => 'blog#create'


end
