Rails.application.routes.draw do
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
