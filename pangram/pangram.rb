require 'byebug'
class Pangram
  
  def self.pangram?(sentence)
    ('a'..'z').collect { |char| sentence.downcase.include?(char) }.uniq == [true]
  end

end
