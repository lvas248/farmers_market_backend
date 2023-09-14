class UserSerializer < ActiveModel::Serializer
  attributes :username, :cart

  has_many :orders

  def cart
    order = self.object.orders.find_by(open: true)
    if order
      return order.order_items.map{ |i| {id: i.id, product: i.product, order_qty:i.order_qty}}
    end
  end

 

  

 

end
