class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  def total_preco
    self.quantity * self.product.preco
  end
end
