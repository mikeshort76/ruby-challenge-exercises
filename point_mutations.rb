=begin
PROBLEM: Given two strings representing strands of DNA, calculate the number of
differences between the two strands.

RULES:
- Return '0' if either strand is empty.
- Strands may be of different lengths.
- Calculation may not mutate the original string.

EXAMPLE:

GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^  -> 5

DATA STRUCTURES
- INPUT: A string of uppercase alphabetic characters
- OUTPUT: An integer

ALGORITHM:
- Define an DNA class that contains two instance methods:
  - A DNA#initialize method, which takes one argument (a string representing a
  DNA strand)
  - A DNA#hamming_distance method, which takes one argument (a string
  representing another DNA strand)
- In DNA#initialize, initialize a differences variable to 0
- Iterate through each character of both strings simultaneously, comparing
whether the characters are the same. If the characters are different, increment
differences.
- Stop iterating when the end of the shortest string is reached.
- Return differences once iteration concludes.
=end

class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(distance)
    difference = 0
    current_index = 0
    return 0 if strand.empty? || distance.empty?
    while current_index <= strand.size - 1 && current_index <= distance.size - 1
      difference += 1 if strand[current_index] != distance[current_index]
      current_index += 1
    end
    difference
  end
end
