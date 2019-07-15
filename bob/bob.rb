class Bob

  def self.hey(remark)
    remark = Remark.new(remark)
    if remark.empty
      "Fine. Be that way!"
    elsif remark.yell && remark.question
      "Calm down, I know what I'm doing!"
    elsif remark.yell
      "Whoa, chill out!"
    elsif remark.question
      "Sure."
    else
      "Whatever."
    end
  end

end

class Remark

  attr_accessor :text

  def initialize(text)
    @text = text.strip
  end

  def empty
    text.empty?
  end

  def yell
    text == text.upcase && text != text.downcase
  end

  def question
    text.end_with?('?')
  end

end