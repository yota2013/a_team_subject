Rails.application.routes.draw do
  get '/comments/:id',  to: 'blog_pages#comments'
  root 'blog_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "contributionCreate",  to: "blog_pages#contributionCreate"
  post "commentCreate",  to: "blog_pages#commentCreate"
  post "update",  to: "blog_pages#update"
end
