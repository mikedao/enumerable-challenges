class Weight
  attr_reader :boxes

  def initialize(boxes)
    @boxes = boxes
  end

  def smallest
    boxes.min_by { |box| box[:weight] }
  end

  def biggest
    boxes.max_by { |box| box[:weight] }
  end

  def both
    "Biggest: #{biggest[:name]} Smallest: #{smallest[:name]}"
  end

end
