class Scrabble
  attr_reader :str

  VALUES = { 1 => %w(a e i o u l n r s t),
             2 => %w(d g),
             3 => %w(b c m p),
             4 => %w(f h v w y),
             5 => %w(k),
             8 => %w(j x),
             10 => %w(q z) }

  def self.score(str)
    Scrabble.new(str).score
  end

  def initialize(str)
    @str = str.downcase unless str.nil?
    @score = 0
  end

  def score
    return 0 if str.nil?
    str.chars.each do |e|
      VALUES.each_pair do |k, v|
        @score += k if v.include?(e)
      end
    end
    @score
  end
end
