require_relative 'test_helper'
require_relative '../lib/challenge_07'

describe MaxWeight do

  it "takes in boxes" do
    boxes = [{:name => "blue", :weight => 100},{:name => "red", :weight => 200},{:name => "green", :weight => 300}]
    which_big = MaxWeight.new(boxes)
    assert_equal boxes, which_big.boxes
  end

  it "returns the biggest" do
    boxes = [{:name => "blue", :weight => 100},{:name => "red", :weight => 200},{:name => "green", :weight => 300}]
    which_big = MaxWeight.new(boxes)
    assert_equal "green", which_big.biggest[:name]
  end


end
