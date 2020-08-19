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

  def all_equal?(array)
    array.uniq.count == 1
  end


  def kind
    # verify triangle is valid
    @triangle.sort!
    if(@triangle[0] + @triangle[1] <= @triangle[2] || @triangle.any?{|n| n <= 0})
        raise TriangleError
    end

    if(@triangle.all_equal?)
    # if( @sideA == @sideB && @sideB == @sideC)
      :equilateral
    elsif (@sideA == @sideB && @sideB != @sideC || @sideA != @sideB && @sideB == @sideC || @sideA == @sideC && @sideC != @sideB)
      :isosceles
    elsif (@sideA != @sideB && @sideB != @sideC && @sideA != @sideC)
      :scalene
    end
  end

end
