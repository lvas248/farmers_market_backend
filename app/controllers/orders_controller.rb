class OrdersController < ApplicationController

    def add_to_cart
        order = get_user.orders.find_or_create_by(open: true)
        order_item =  order.order_items.find_by(product_id: product_params[:product_id])
        order_item ? order_item.update!(order_qty: order_item.order_qty + product_params[:order_qty]) : order_item = order.order_items.create!(product_params)
        render json: order_item, status: :created

        #   { "product": { "id": 6, "order_qty": 1 } }
    end

    def update_cart
        order = get_user.orders.find_by(open: true)
        order_item = order.order_items.find(params[:order_item_id])
        order_item.update!(product_params)
        render json: order_item, status: :created

        #   params - /:order_item_id
        #   { "product": { "id": 6, "order_qty": 1 } }

    end

    def remove_from_cart
        order = get_user.orders.find_by(open: true)
        order.order_items.find(params[:order_item_id]).destroy
        head :ok
        #   params - /:order_item_id
    end

    def clear_cart
        get_user.orders.find_by(open: true).order_items.destroy_all
        head :ok
    end

    def submit_order
        order = get_user.orders.find_by(open: true)
        order.order_items.each{ |i| Product.find(i.product.id).update!(qty_avail: i.product.qty_avail - i.order_qty )}
        order.update!(open: false)
        render json: order, inlcude: ['order_items','order_items.product'], include: ['order_items.product'], status: :created

        
    end
    

    private

    def get_user
        User.find(session[:user_id])
    end


    def product_params
        params.require(:product).permit(:product_id, :order_qty)
     end
      
end
