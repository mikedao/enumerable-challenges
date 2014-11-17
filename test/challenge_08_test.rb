require_relative 'test_helper'
require_relative '../lib/challenge_08'

describe MinWeight do

  it "takes in boxes" do
    boxes = [{:name => "blue", :weight => 100},{:name => "red", :weight => 200},{:name => "green", :weight => 300}]
    which_big = MinWeight.new(boxes)
    assert_equal boxes, which_big.boxes
  end

  it "returns the biggest" do
    boxes = [{:name => "blue", :weight => 100},{:name => "red", :weight => 200},{:name => "green", :weight => 300}]
    which_small = MinWeight.new(boxes)
    assert_equal "blue", which_small.smallest[:name]
  end


end
