class Api::OrdersController < ApplicationController

  def index
    @orders = current_user.orders
    render 'index.json.jbuilder'
  end

# def index
#     if current_user
#       @orders = current_user.orders
#       render 'index.json.jbuilder'
#     else
#       render json: [], status: :unauthorized
#     end
#   end

def create
    subtotal = Product.find_by(id: params[:product_id]).price
    tax = subtotal * 0.09
    total = subtotal + tax

    order = Order.new(      
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax,
      total: total    
    )
    if order.save
      render json: {message: 'Order created successfully'}, status: :created
    else
      render json: {errors: order.errors.full_messages}, status: :bad_request
    end
  end

end


