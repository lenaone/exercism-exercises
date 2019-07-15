
class Hamming
  
  def self.compute(a, b)
    raise ArgumentError unless a.size == b.size 
    a.chars.each_with_index.count {|n, i| a[i] != b[i] }
  end

end