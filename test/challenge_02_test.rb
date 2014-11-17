require_relative 'test_helper'
require_relative '../lib/challenge_02'

describe DollasDollas do
  it "takes an array of orders" do
    orders =   {
      :order_number => 1,
      :amount => 18.57
              }
    dollas = DollasDollas.new(orders)
    assert_equal orders, dollas.orders
  end

  it "sums the order amounts" do
    orders =   [{:order_number => 1,:amount => 18.57},{:order_number => 2,:amount => 6.43}]
    dollas = DollasDollas.new(orders)
    assert_equal 25, dollas.total
  end

end
