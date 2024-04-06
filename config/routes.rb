Rails.application.routes.draw do
  get 'blog_posts/index'
  get 'errors/not_found'

  # Trasy
  get 'pierwsza', to: 'pages#pierwsza'
  get 'druga', to: 'pages#druga'
  get 'trzecia', to: 'pages#trzecia'
  get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  post "/blog_posts", to: "blog_posts#create", as: :blog_posts
  # Trasa główna
  root 'home#index'

  match '*path', to: 'errors#not_found', via: :all
end
