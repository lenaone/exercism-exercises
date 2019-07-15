class PhoneNumber

  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def self.clean(number)

    check_numbers = number.scan(/\d+/).join

    country_code = 1
    area_code = check_numbers.slice(0..2)
    exchange_code = check_numbers.slice(3..5)
  
    n = (2..9).to_a

    if check_numbers.size == 11 && check_numbers[0].to_i == country_code 
      check_numbers = check_numbers.slice(1..-1)
      area_code = check_numbers.slice(0..2)
      exchange_code = check_numbers.slice(3..5)
      check = PhoneNumber.check(check_numbers)
    else
      check = PhoneNumber.check(check_numbers)
    end
  end

  def self.check(number)
    check_numbers = number.scan(/\d+/).join

    n = (2..9).to_a

    country_code = 1
    area_code = check_numbers.slice(0..2)
    exchange_code = check_numbers.slice(3..5)

    if check_numbers.size == 10 && n.select{ |num| p area_code[0].to_i == num }.size == 1 && n.select{ |num| p exchange_code[0].to_i == num }.size == 1
      check_numbers
    else
      nil
    end
  end


end