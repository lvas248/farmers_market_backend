class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image, :qty, :season, :type
end
