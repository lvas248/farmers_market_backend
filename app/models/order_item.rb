class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :product, uniqueness: true
  validate :confirm_inventory_available

  before_update :destroy_zero_order_qty

  private


  def confirm_inventory_available
    unless self.order_qty <= self.product.qty_avail
      errors.add(:order_qty, "Not enough inventory to fulfill")
    end
  end

  def destroy_zero_order_qty
    #if a user updates a cart_item to order_qty 0, destroys cart_item
    unless self.order_qty > 0
      self.destroy
    end
  end
  


end
