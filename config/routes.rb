Rails.application.routes.draw do
	resources :order_statuses
		resources :orders, shallow: true do
			resources :order_items do
				resources :products
				end
			end
		end