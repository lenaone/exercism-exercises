class Triangle
  attr_accessor :arr
  def initialize(arr)
    @arr = arr
  end

  def equilateral?
    if arr.uniq.include?(0)
      false
    elsif arr.uniq.size == 1 
      true
    end
  end

  def isosceles?
    if arr.uniq.include?(1) || arr.uniq.size == 3
      false
    elsif arr.uniq.size == 1 || 2
      true
    end
  end

  def scalene?
    arr.uniq.size == 3 && arr[0] <= arr.slice(1..-1).sum
  end

end