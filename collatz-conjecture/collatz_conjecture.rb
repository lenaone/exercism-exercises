require 'byebug'

class CollatzConjecture
  
  def self.steps(num)
    raise ArgumentError if num <= 0 
    return 0 unless num != 1

    arr = []
    while num != 1
      if num.even?
        num = num/2
        arr << num
      else
        num = num*3 + 1
        arr << num
      end
    end

    arr.count

  end

end