class OrdersController < ApplicationController

    def addToCart
        #if user is loggedIn, find or createby cart (open: true)
        order = get_user.orders.find_or_create_by(open: true)
              

        order_item =  order.order_items.find_by(product_id: product_params[:product_id])
        


        if order_item
            order_item.update!(order_qty: order_item.order_qty + product_params[:order_qty])
        else
            order_item = order.order_items.create!(product_params)
        end
        render json: order_item, status: :created
    end

    private

    def get_user
        User.find(session[:user_id])
    end


    def product_params
        params.require(:product).permit(:product_id, :order_qty)
     end
      
end
