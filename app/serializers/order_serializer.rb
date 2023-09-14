class OrderSerializer < ActiveModel::Serializer
  attributes :id, :open, :detailed_order_items

  def detailed_order_items
    self.object.order_items.map{ |i| { product: i.product, order_qty: i.order_qty }}
  end

 
  

end
