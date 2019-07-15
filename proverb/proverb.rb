class Proverb

  attr_accessor :args

  def initialize(*args)
    @args = *args
  end

  def to_s
    num = args.size 
    arr = []

    for i in 0..(num - 2)
      arr << "For want of a #{args[i]} the #{args[i+1]} was lost.\n" \
    end
    check_last_sentence(arr)
  
  end

  def check_last_sentence(arr)
    if args.last.class == Hash
      arr.pop
     arr.join +  "And all for the want of a #{args.last[:qualifier]} #{args.first}."
    else
      arr.join + "And all for the want of a #{args.first}."
    end
  end

  
end