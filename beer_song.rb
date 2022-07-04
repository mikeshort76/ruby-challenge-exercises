=begin
PROBLEM:
Generate the lyrics to the Beer Song given the verse (or range of verses)

DATA STRUCTURES:
INPUT: An integer (for generating one verse), or 2 integers (starting and
ending verses) for generating a range of verses.

OUTPUT: A string containing the verse(s) specified in the input.

ALGORITHM:
-

=end

class BeerSong
  def self.verse(verse)
    bottles = verse > 1 ? "bottles" : "bottle"
    one_less_bottle = (verse - 1) > 1 ? "bottles" : "bottle"
    if verse > 1
      "#{verse} #{bottles} of beer on the wall, #{verse} #{bottles} of beer.\n" \
      "Take one down and pass it around, #{verse - 1} #{one_less_bottle} of beer on the wall.\n"
    elsif verse == 1
      "#{verse} bottle of beer on the wall, #{verse} bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif verse == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def self.verses(start_verse, end_verse)
    result = []
    (start_verse.downto(end_verse)).each do |verse|
      result << BeerSong.verse(verse)
    end
    result.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end
end
