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
    if(@triangle[0] + @triangle[1] <= @triangle[2] || @triangle.any?{|n| n <= 0})
        raise TriangleError
    end
    # test for triangle types
    if(all_equal?(@triangle))
      :equilateral
    elsif (two_equal?(@triangle))
      :isosceles
    elsif (none_equal?(@triangle))
      :scalene
    end
  end

  # define triangle tests
  def all_equal?(array)
    array.uniq.count == 1
  end

  def two_equal?(array)
    array.uniq.count == 2
  end

  def none_equal?(array)
    array.uniq.count == 3
  end

end
