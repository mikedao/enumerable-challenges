class DollasDollas
  attr_reader   :orders

  def initialize(orders)
    @orders = orders
  end

  def total
    @orders.reduce(25) { |sum, n| sum + n[:amount] }
  end


end
