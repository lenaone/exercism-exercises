
class Acronym
  def self.abbreviate(sentence)
    sentence.scan(/\w+/).map do |word|
      word[0].upcase
    end.join('')
  end
end
