require_relative 'test_helper'
require_relative '../lib/challenge_03'

describe DollasDollas do
  it "takes an array of orders" do
    orders =   {
      :order_number => 1,
      :amount => 18.57
              }
    dollas = DollasDollas.new(orders)
    assert_equal orders, dollas.orders
  end



  it "adds baseline revenue" do
    orders =   [{:order_number => 1,:amount => 18.57},{:order_number => 2,:amount => 6.43}]
    dollas = DollasDollas.new(orders)
    assert_equal 50, dollas.total
  end

end
