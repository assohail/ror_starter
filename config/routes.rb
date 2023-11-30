Rails.application.routes.draw do
  resources :users
  root "articles#index"

  resources :articles do
    resources :comments
  end

  # resource :geocoder
  # resolve('Geocoder') { [:geocoder] }

  # namespace :admin do
  #   resources :articles, :comments
  # end
  
  # scope module: 'admin' do
  #   resources :articles, :comments
  # end

  # resources :articles, module: 'admin'

  # scope '/admin' do
  #   resources :articles, :comments
  # end
  
  # resources :articles, path: '/admin/as/articles' do
  #   resources :comments
  # end

  # resources :articles do
  #   resources :comments, only: [:index, :new, :create]
  # end
  # resources :comments, only: [:show, :edit, :update, :destroy]

  # same as above 
  # resources :articles do
  #   resources :comments, shallow: true
  # end

  # resources :articles, shallow: true do
  #   resources :comments
  #   resources :quotes
  #   resources :drafts
  # end
  
end
