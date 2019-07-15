class Year

  def self.leap?(year)

    if year % 4 == 0 && year % 100 != 0
    "#{year} is not a leap year."
    elsif year % 4 == 0 && year % 100 != 0
    "#{year} is a leap year."
    elsif year % 100 != 0 && year % 400 == 0
    "#{year} is not a leap year."
    elsif year % 200 != 0 && year % 400 == 0
    "#{year} is not a leap year."
    elsif year % 400 == 0
      "#{year} is a leap year"
    end

  end

end
