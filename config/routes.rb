Rails.application.routes.draw do
  root 'blog_pages#home'
  get  '/comments',    to: 'blog_pages#comments'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "create",  to: "blog_pages#create"
  
end
