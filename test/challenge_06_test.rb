require_relative 'test_helper'
require_relative '../lib/challenge_06'

describe DollasDollas do

  it "takes an array of orders" do
    orders =   {
      :order_number => 1,
      :amount => 18.57,
      :cancelled => "no"
              }
    dollas = DollasDollas.new(orders)
    assert_equal orders, dollas.orders
  end

  it "rejects properly" do
    orders = [{:order_number => 1,:amount => 18.57,:cancelled => "no"},{:order_number => 2,:amount => 6.43, :cancelled => "yes"},{:order_number => 3,:amount => 16.43, :cancelled => "no"}]
    reject = [{:order_number => 1,:amount => 18.57,:cancelled => "no"},{:order_number => 3,:amount => 16.43, :cancelled => "no"} ]
    dollas = DollasDollas.new(orders)
    assert_equal reject, dollas.removed_cancels
  end



  it "adds baseline revenue and proper orders" do
    orders =   [{:order_number => 1,:amount => 18.57,:cancelled => "no"},{:order_number => 2,:amount => 6.43, :cancelled => "yes"},{:order_number => 3,:amount => 16.43, :cancelled => "no"}]
    dollas = DollasDollas.new(orders)
    assert_equal 60, dollas.total
  end

end
