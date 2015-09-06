Rails.application.routes.draw do

	# get '/products', to:'products#index', as: :products
	# get '/products/new', to: 'products#new', as: :new_product
	# post '/products', to: 'products#create'
	# get '/products/:id', to: 'products#show'
	# get '/products/:id/edit', to: 'products#edit', as: :product
	# patch '/products/:id', to: 'products#update'
	# delete '/products/:id', to: 'products#destoy'

	# Recurso que abstrae todas las configuraciones anteriores del producto
	resources :products

	# Configuracion para mostrar solo las rutas deseadas en este caso index y new
	# resources :products, only: [:index, :new]

	# Configuracion para mostrar todas las rutas excepto index y new
	# vresources :products, except: [:index, :new]

  	get '/welcome', to:'welcome#index'
  	
end
