class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items

  def total_preco
   order_items.inject(0) { |sum, item| sum + item.total_preco }
 end

end
