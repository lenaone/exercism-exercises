class Raindrops

  CONVERT_NUMBER = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    result = []
    CONVERT_NUMBER.each_pair do |factor, sound|
     result << sound if number % factor == 0
    end 
    result.empty? ? number.to_s : result.join('')
  end
end