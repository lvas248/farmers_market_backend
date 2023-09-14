class UserSerializer < ActiveModel::Serializer
  attributes :username, :cart, :closed_orders

 

  def cart
    self.object.orders.where(open: true).first.order_items.map{ |i| {product: i.product, order_qty:i.order_qty}}
  end

  def closed_orders
    self.object.orders.where(open: false)
  end

  

 

end
