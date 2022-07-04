require 'date'

class Meetup
  attr_accessor :date

  def initialize(year, month)
    @date = Date.civil(year, month)
  end

  def day(weekday, schedule) # returns Date object

  end
end

Meetup.new(1976, 7).day('Monday', 'first')
