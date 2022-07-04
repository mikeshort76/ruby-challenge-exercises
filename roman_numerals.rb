class RomanNumeral
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def to_roman
    arr = num.to_s.split('').map(&:to_i)
    case arr.length
    when 4 then thousand(arr[0]) + hundred(arr[1]) + ten(arr[2]) + one(arr[3])
    when 3 then hundred(arr[0]) + ten(arr[1]) + one(arr[2])
    when 2 then ten(arr[0]) + one(arr[1])
    when 1 then one(arr[0])
    end
  end

  private

  def thousand(n)
    'M' * n
  end

  def hundred(n)
    case n
    when n <= 3 then ('C' * n)
    when n == 4 then 'CD'
    when n >= 5 && n < 9 then ('D' + ('C' * (n % 5)))
    when n == 9 then 'CM'
    end
  end

  def ten(n)
    case n
    when n <= 3 then ('X' * n)
    when n == 4 then 'XL'
    when n >= 5 && n < 9 then ('L' + ('X' * (n % 5)))
    when n == 9 then 'XC'
    end
  end

  def one(n)
    case n
    when n <= 3 then ('I' * n)
    when n == 4 then 'IV'
    when n >= 5 && n < 9 then ('V' + ('I' * (n % 5)))
    when n == 9 then 'IX'
    end
  end
end
