class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :product, uniqueness: true
  validate :confirm_inventory_available

  private


  def confirm_inventory_available
    unless self.qty <= self.product.qty
      errors.add(:qty, "Not enough inventory")
    end
  end
  


end
