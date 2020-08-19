class Triangle
  attr_accessor :sideA, :sideB, :sideC

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

    if( @sideA == @sideB == @sideC)
      :equilateral
    elsif (@sideA == @sideB != @sideC)
      :isosceles
    elsif (@sideA != @sideB != @sideC)
      :scalene
    end
  end
      
      
end
