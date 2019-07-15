class BinarySearch

  attr_accessor :arr

  def initialize(arr)
    @arr = arr.first == 1 ? arr : raise(ArgumentError)
  end

  def list
    arr
  end

  def search_for(number)
    raise RuntimeError if arr.index(number).nil?
    arr.index(number)
  end

  def middle
    arr.count/2
  end
end