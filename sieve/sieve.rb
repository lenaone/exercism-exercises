class Sieve

  attr_accessor :num
  
  def initialize(num)
    @num = num
  end

  def primes
    if num > 100
      prime_under_tens + prime_multiply_under_1000 + (2..num).select {|x| x % 2 != 0 && x % 3 != 0 && x % 5 != 0 && x % 7 != 0 && x % 11 != 0 && x % 13 != 0 && x % 17 != 0 && x % 19 != 0 && x % 23 != 0 && x % 29 != 0 && x % 31 != 0}
    elsif num == 10
      prime_under_tens
    elsif num < 10
      prime_under_tens.select {|x| x == num }
    else 
      prime_under_tens + (2..num).select {|x| x % 2 != 0 && x % 3 != 0 && x % 5 != 0 && x % 7 != 0}
    end
  end

  def prime_under_tens
    [2,3,5,7]
  end

  def prime_multiply_under_1000
    (2..100).select {|x| x % 2 != 0 && x % 3 != 0 && x % 5 != 0 && x % 7 != 0 }.select {|n| n**2 < 1000}
  end
  
end