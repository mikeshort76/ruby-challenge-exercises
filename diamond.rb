=begin
-Letter "E"
-Diamond size: 9
-Line 1: 4 spaces, "A", 4 spaces
-Line 2: 3 spaces, "B", 1 space, "B", 3 spaces
-Line 3: 2 spaces, "C", 3 spaces, "C", 2 spaces
-Line 4: 1 space, "D", 5 spaces, "D", 1 space
-Line 5: 0 spaces, "E" 7 spaces, "E", 0 spaces
-Line 6: 1 space, "D", 5 spaces, "D", 1 space
-Line 7: 2 spaces, "C", 3 spaces, "C", 2 spaces
-Line 8: 3 spaces, "B", 1 space, "B", 3 spaces
-Line 9: 4 spaces, "A", 4 spaces
=end

class Diamond
  def self.make_diamond(letter)
    letters = ('A'..letter).to_a
    diamond_size = letters.size * 2 - 1
    idx = 0
    outer_spaces = letters.size - 1
    inner_spaces = 1
    result = ''
    loop do
      break if idx > letters.size - 1
      if idx == 0
        result << " " * outer_spaces + letters[idx] +
        " " * outer_spaces + "\n"
        idx += 1
        outer_spaces -= 1
      else
        result << " " * outer_spaces + letters[idx] +
        " " * inner_spaces + letters[idx] + " " * outer_spaces +"\n"
        idx += 1
        outer_spaces -= 1
        inner_spaces += 2
      end
    end
    letters.reverse!
    idx = 1
    outer_spaces = 1
    inner_spaces = diamond_size - 4
    loop do
      break if idx > letters.size - 1
      if idx == letters.size - 1
        result << " " * outer_spaces + letters[idx] + " " * outer_spaces + "\n"
        idx += 1
        outer_spaces += 1
      else
        result << " " * outer_spaces + letters[idx] + " " * inner_spaces +
        letters[idx] + " " * outer_spaces + "\n"
        idx += 1
        outer_spaces += 1
        inner_spaces -= 2
      end
    end
    result
  end
end

puts Diamond.make_diamond("L")