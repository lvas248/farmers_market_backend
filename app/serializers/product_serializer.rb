class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image, :qty_avail, :season, :produce_type
end
