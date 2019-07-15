class Grains

  def self.square(num)
    raise ArgumentError if num <= 0 || num >= 65 
      2**(num-1)
  end

  def self.total
    2**64 -1
  end

end

