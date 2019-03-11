Rails.application.routes.draw do

  namespace :api do
    # get '/the_product' => 'products#all_products'
    # get '/product1' => 'products#product1'
    # get '/product2' => 'products#product2'
    # get '/product3' => 'products#product3'
    # get '/query_single_product' => 'products#product1'
    # get '/segment_single_product/:seg_key' => 'products#product2'
    # post '/first_post' => 'products#all_products'

    get '/products' => 'products#index'   #display a list of all products
    get '/products/:id' => 'products#show'    #display a specific photo
    post 'products' => 'products#create' #create a new photo
    patch 'products/:id' => 'products#update' #updates a specific photo
    delete 'products/:id' => 'products#destroy'   

    # get '/product2' => 'products#product2'  
    # get '/product3' => 'products#product3'
    # get '/query_single_product' => 'products#product1'
    # get '/segment_single_product/:seg_key' => 'products#product2'
    # post '/first_post' => 'products#all_products'


  end 

end
  