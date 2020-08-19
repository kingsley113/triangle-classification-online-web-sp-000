class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :sideA, :sideB, :sideC

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  class TriangleError < StandardError
      
  end


  def self.kind
    # verify triangle is valid
    if((@sideA + @sideB) <= @sideC || @sideA <= 0 || @sideB <= 0 || @sideC <= 0)
      raise TriangleError
    end
end
