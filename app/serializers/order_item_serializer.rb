class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_qty

  belongs_to :product

  
end
