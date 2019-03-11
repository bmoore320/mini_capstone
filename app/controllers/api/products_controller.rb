        class Api::ProductsController < ApplicationController
  def index
    if search_term = params[:search]
      @products = Product.where("name LIKE ?", "%#{params[:search]}%")
    else
      @products = Product.all 
    end
 

    if params[:discount] == "true"
      @products = @products.where("price > ?", 99)
    end

    if params[:sort] && params[:sort_order]
      @products = @products.order(params[:sort] => params[:sort_order])
    end
     render 'index.json.jbuilder' 
  end 


  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render 'show.json.jbuilder' 
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
  if @product.save
    render 'show.json.jbuilder'
  else
    render 'errors.json.jbuilder'
  end
  end  
  
    
  def update
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    @product.name = params[:name]
    @product.price = params[:price]
    @product.image_url = params[:image_url]
    @product.description = params[:description]
    if @product.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def destroy
  the_id = params[:id]
  @product = Product.find_by(id: the_id)
  @product.destroy
  render 'destroy.json.jbuilder'
  end

end 
        