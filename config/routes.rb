Rails.application.routes.draw do
	resources :order_statuses, shallow: true do
		resources :orders do
			resources :order_items
			end
		end
	resources :products
end