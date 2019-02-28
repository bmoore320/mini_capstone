Rails.application.routes.draw do

  namespace :api do
    get '/the_product' => 'products#all_products'
    get '/product1' => 'products#product1'
    get '/product2' => 'products#product2'
    get '/product3' => 'products#product3'
    get '/query_single_product' => 'products#product1'
    get '/segment_single_product/:seg_key' => 'products#product2'
  end 

end
