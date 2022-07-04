=begin
PROBLEM:
Write a program that identifies anagrams for a given input string in an array
of strings.

DATA STRUCTURES:
INPUT: An initial string; a candidate array of strings
RETURN VALUE: An array of anagram strings

RULES:
-Return an empty array if there are no matches
-Program must be able to detect multiple anagrams from the candidate array
-Match is case insensitive
-Candidate strings identical to the input string are not a match
-Subsets present in the candidate strings are not a match
=end

class Anagram
  attr_reader :str

  def initialize(str)
    @str = str.downcase
  end

  def match(arr)
    result = []
    arr.each do |e|
      next if e.downcase == str
      result << e if e.downcase.chars.sort.join('') == str.chars.sort.join('')
    end
    result
  end
end
