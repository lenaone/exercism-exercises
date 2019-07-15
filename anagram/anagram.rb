class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(arr)
    if word == word.upcase
      []
    else
      match_word = word.downcase.chars.sort.join
      arr.select { |w| match_word.match(w.downcase.chars.sort.join) && match_word.length == w.downcase.chars.sort.join.length}
    end
  end
  
end