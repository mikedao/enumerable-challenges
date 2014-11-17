class DollasDollas
  attr_reader   :orders

  def initialize(orders)
    @orders = orders
  end

  def removed_cancels
    orders.reject do |order| 
      order[:cancelled] == "yes"
    end
  end

  def total
    removed_cancels.reduce(25) { |sum, n| sum + n[:amount] }
  end


end
