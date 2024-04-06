Rails.application.routes.draw do
  get 'errors/not_found'

  # Trasy
  get 'pierwsza', to: 'pages#pierwsza'
  get 'druga', to: 'pages#druga'
  get 'trzecia', to: 'pages#trzecia'

  # Trasa główna
  root 'home#index'

  match '*path', to: 'errors#not_found', via: :all
end
