class Squares

  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (1..number).sum.pow(2)
  end

  def sum_of_squares
    (1..number).to_a.map {|n| (n**2) }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

end