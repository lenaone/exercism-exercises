
class Series

  attr_accessor :str
  
  def initialize(str)
    @str = str
  end

  def slices(num)
    raise ArgumentError if num > str.size
    str.chars.each_cons(num).to_a.map(&:join)
  end

end