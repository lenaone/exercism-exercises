class Phrase

  attr_accessor :str

  def initialize(str)
    @words = words_in_arr(str)
  end

  def words_in_arr(str)
    str.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) { |item, hash| hash[item] += 1 }
  end

end