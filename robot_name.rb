class Robot
  @@names_in_use = []
  attr_reader :name

  def initialize
    @name = create_name
  end

  def reset
    create_name
  end

  private

  def create_name
    alphabet = {}
    current_letter = 'A'
    until @@names_in_use.include?(n)
      (1..26).each do |n|
        alphabet[n] = current_letter
        current_letter = current_letter.next
      end
      n = alphabet[rand(1..26)] + alphabet[rand(1..26)] + rand(100..999).to_s
    end
    @names_in_use << n
  end
end
