Rails.application.routes.draw do

	get '/products', to:'products#index', as: :products
	get '/products/new', to: 'products#new', as: :new_product
	post '/products', to: 'products#create'
	get '/products/:id', to: 'products#show'
	get '/products/:id/edit', to: 'products#edit', as: :product
	patch '/products/:id', to: 'products#update'

  	get '/welcome', to:'welcome#index'
  	
end
