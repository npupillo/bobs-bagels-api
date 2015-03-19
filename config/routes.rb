Rails.application.routes.draw do


  resources :users, defaults: { format: :json }, only: [:show, :index, :create, :update] do
    post 'sign_in', on: :collection
	  post 'retrieve_customer', on: :collection
	  post 'retrieve_card', on: :collection
    resources :orders, only: [:create, :update, :destroy]
      post 'add_card', on: :collection
      post 'remove_card', on: :collection
  end

  resources :order_statuses, only: [:create, :update, :destroy]


  resources :products, only: [:index]
  resources :ingredients, only: [:create, :update]

  namespace :admin do
    resources :products
  end

end
