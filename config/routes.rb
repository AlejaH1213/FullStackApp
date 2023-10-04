Rails.application.routes.draw do
  get 'blogs/:id' => 'blog#show'
  root 'blog#index'
end
