Rails.application.routes.draw do
  get '/comments/:id',  to: 'blog_pages#comments'
  root 'blog_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "create",  to: "blog_pages#create"
  
end
