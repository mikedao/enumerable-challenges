require_relative 'test_helper'
require_relative '../lib/challenge_09'

describe Weight do

  it "takes in boxes" do
    boxes = [{:name => "blue", :weight => 100},{:name => "red", :weight => 200},{:name => "green", :weight => 300}]
    weight = Weight.new(boxes)
    assert_equal boxes, weight.boxes
  end

  it "returns the smallest" do
    boxes = [{:name => "blue", :weight => 100},{:name => "red", :weight => 200},{:name => "green", :weight => 300}]
    weight = Weight.new(boxes)
    assert_equal "blue", weight.smallest[:name]
  end

  it "returns the biggest" do
    boxes = [{:name => "blue", :weight => 100},{:name => "red", :weight => 200},{:name => "green", :weight => 300}]
    weight = Weight.new(boxes)
    assert_equal "green", weight.biggest[:name]
  end

  it "returns both" do
    boxes = [{:name => "blue", :weight => 100},{:name => "red", :weight => 200},{:name => "green", :weight => 300}]
    weight = Weight.new(boxes)
    expected = "Biggest: green Smallest: blue"
    assert_equal expected, weight.both
  end

end
