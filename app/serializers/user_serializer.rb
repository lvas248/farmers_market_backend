class UserSerializer < ActiveModel::Serializer
  attributes :username, :cart 

  has_many :orders

  def cart
    self.object.orders.where(open: true).first.order_items.map{ |i| {product: i.product, qty:i.qty}}
  end

  

 

end
