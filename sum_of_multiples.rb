=begin
PROBLEM
Given a natural number num and a set num_set of one or more other numbers, find
the sum of all the multiples of num_set that are leass than num. If num_set not
given, default to 3 and 5.

DATA STRUCTURES
Input: An integer (num), an array of integers (num_set)
Output: An integer

ALGORITHM
-Initialize multiples array
-Iterate through mum_set
-Find multiples of each n in num_set while multiple < num
  -Initialize a multiplier to 1
  -push m (n * multiplier) to multiples
  -move to next iteration when m >= num
-When iteration complete, sum multiple array elements
-return sum

=end

class SumOfMultiples
  attr_reader :num_set

  def initialize(*num_set)
    @num_set = !num_set.empty? ? num_set : [3, 5]
  end

  def self.to(num)
    SumOfMultiples.new(3, 5).to(num)
  end

  def to(num)
    multiple_array = []
    num_set.each do |n|
      multiple = 1
      multiplier = 1
      loop do
        multiple = n * multiplier
        break if multiple >= num
        multiple_array << multiple
        multiplier += 1
      end
    end
    multiple_array.uniq.sum
  end
end

p SumOfMultiples.new(4, 6).to(15)
