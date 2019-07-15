class SumOfMultiples

  attr_accessor :args

  def initialize(*args)
    @args = args
  end

  def to(sum_of_num)
    args.map {|i| (1..sum_of_num).map { |n| i * n}}.flatten.uniq.select {|num| num < sum_of_num}.sum
  end

end