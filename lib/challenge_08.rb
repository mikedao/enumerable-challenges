class MinWeight
  attr_reader :boxes

  def initialize(boxes)
    @boxes = boxes
  end

  def smallest
    boxes.min_by { |box| box[:weight] }
  end

end
