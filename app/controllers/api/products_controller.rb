class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all

    render 'my_product.json.jbuilder'
  end 

  def product1
    @product1 = Product.first

    render 'a_product.json.jbuilder'
  end

  def product2
    @product2 = Product.second
    @parameter = params['seg_key']

    render 'product2.json.jbuilder' 
  end

  def product3
    @product3 = Product.third

    render 'product3.json.jbuilder'
  end
end 
