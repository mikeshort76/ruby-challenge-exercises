=begin
PROBLEM
Given a numerical string 'str', identify all of the possible consecutive series
within 'str' of a given length 'length'.
RULES
-Input 'str' must be a numerical string.
-Length of 'str' must be less than or equal to 'length'. Throw ArgumentError
otherwise.
-Output consists of a nested array. The outer array contains arrays of all of
the result series (elements represented as integers).

DATA STRUCTURES
Input: A numerical string
Output: A nested array, with the outer array containing one or more arrays of
integers that represent the possible consecutive series.

ALGORITHM
CONSTRUCTOR
-Validate that input contains only numerical characters

SLICES method
-Length of 'str' must be less than or equal to 'length'. Throw ArgumentError
otherwise.
-Initialize an empty 'result' array
-Iterate over characters in 'str' using each with index, returning a slice of
length 'length' of consecutive characters
-Push return value of slice to 'result' array
-Stop iterating once idx + length > str.length
=end

class Series
  attr_reader :str

  def initialize(str)
    @str = str
    raise ArgumentError if @str.match?(/[^0-9]/)
  end

  def slices(length)
    raise ArgumentError if length > str.length
    result = []
    str.split('').each_index do |idx|
      break if idx > str.length - length
      result << str[idx, length].chars.map(&:to_i)
    end
    result
  end
end
