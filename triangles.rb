=begin
Equilateral: All 3 sides have same length
Isosceles: 2 of the sides are the same length
Scalene: All different lengths

All sides must be length > 0
Sum of the length of any two sides must be greater than the length of the 3rd
size
=end

class Triangle
  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
    raise ArgumentError if @sides.any? { |e| e <= 0 }
    raise ArgumentError if ((@sides[0] + @sides[1]) <= @sides[2]) ||
                           ((@sides[1] + @sides[2]) <= @sides[0]) ||
                           ((@sides[0] + @sides[2]) <= @sides[1])
  end

  def kind
    if @sides.uniq.size == 3
      'scalene'
    elsif @sides.uniq.size == 1
      'equilateral'
    else
      'isosceles'
    end
  end
end
