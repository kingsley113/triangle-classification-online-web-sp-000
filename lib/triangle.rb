class Triangle
  attr_accessor :sideA, :sideB, :sideC

  def initialize(sideA, sideB, sideC)
    @triangle = []
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
    @triangle << @sideA
    @triangle << @sideB
    @triangle << @sideC
  end

  class TriangleError < StandardError

  end


  def kind
    # verify triangle is valid
    @triangle.sort!
    if(@triangle[0] + @triange[1] <= @triange[2] || @triangle.any?{|n| n <= 0})
    # if((@sideA + @sideB) <= @sideC || (@sideA + @sideC) <= @sideB || (@sideB + @sideC) <= @sideA || @sideA <= 0 || @sideB <= 0 || @sideC <= 0)
      raise TriangleError
    end

    if( @sideA == @sideB && @sideB == @sideC)
      :equilateral
    elsif (@sideA == @sideB && @sideB != @sideC || @sideA != @sideB && @sideB == @sideC || @sideA == @sideC && @sideC != @sideB)
      :isosceles
    elsif (@sideA != @sideB && @sideB != @sideC && @sideA != @sideC)
      :scalene
    end
  end


end
