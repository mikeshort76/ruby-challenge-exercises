=begin
PROBLEM
-Design a clock object independent of date.
-The clock should represent time in hours and minutes.
-The clock should utilize the 24-hour time format (not 12 hours)
-The user must be able to add minutes to or subtract minutes from
the time on the clock.
-Two identical clock objects should be equal to each other.

RULES
-Addition/subtraction operations crossing midnight should "wrap around"
(i.e. 23:59 + 00:04 = 00:03; 00:10 - 00:23 = 00:47 )
-Minutes totalling multiple days should accurately represent the time

=end

class Clock
  attr_accessor :total_minutes

  def initialize(hours, minutes)
    @total_minutes = (hours * 60) + minutes
  end

  def self.at(hours, minutes=0)
    Clock.new(hours, minutes)
  end

  def to_s
    hours, minutes = (@total_minutes % 1440).divmod(60)
    format("%02d:%02d", hours, minutes)
  end

  def +(minutes)
    self.total_minutes += minutes
    self
  end

  def -(minutes)
    self.total_minutes -= minutes
    self
  end

  def ==(other_clock)
    to_s == other_clock.to_s
  end
end
