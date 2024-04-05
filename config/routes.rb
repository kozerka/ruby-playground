Rails.application.routes.draw do
  # Twoje istniejące trasy
  get 'home/index'

  # Dodaj nowe trasy
  get 'pierwsza', to: 'pages#pierwsza'
  get 'druga', to: 'pages#druga'
  get 'trzecia', to: 'pages#trzecia'

  # Trasa główna
  root 'home#index'
end
