Rails.application.routes.draw do
  get 'blog_posts/index'
  get 'errors/not_found'

  # Trasy
  get 'pierwsza', to: 'pages#pierwsza'
  get 'druga', to: 'pages#druga'
  get 'trzecia', to: 'pages#trzecia'
  get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post

  # Trasa główna
  root 'home#index'

  match '*path', to: 'errors#not_found', via: :all
end
