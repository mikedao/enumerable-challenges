class MaxWeight
  attr_reader :boxes

  def initialize(boxes)
    @boxes = boxes
  end

  def biggest
    boxes.max_by { |box| box[:weight] }
  end

end
