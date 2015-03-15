Rails.application.routes.draw do

	resources :charges, defaults: { format: :json }, only: [:index] do
		post 'make_charge', on: :collection
		end

	resources :users, defaults: { format: :json }, only: [:show, :index, :create, :update] do
    post 'sign_in', on: :collection
		end

	resources :order_statuses, only: [:create, :update, :destroy]
	resources :orders, only: [:create, :update, :destroy] do
	resources :order_items, only: [:create, :update, :destroy]
		end
	resources :products, only: [:index, :show]
	resources :ingredients, only: [:create, :update]

  namespace :admin do
    resources :products
  end

end
