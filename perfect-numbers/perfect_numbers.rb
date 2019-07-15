class PerfectNumber

  def self.classify(number)
    factors = factors(number)
    raise RuntimeError if factors.empty?
    return 'perfect' if factors.sum == number
    return 'deficient' if factors.sum < number
    return 'abundant' if factors.sum > number
  end

  def self.factors(number)
    factors = (1..number).select {|n| number % n == 0}
    factors.pop
    factors
  end

end