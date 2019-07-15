class Sieve

  attr_accessor :num
  
  def initialize(num)
    @num = num
  end

  def primes
    range = (2..num).to_a
    range.each {|n| n.upto(num) {|x| range.delete(x * n)}}
  end
end