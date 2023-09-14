class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :qty_avail
end
