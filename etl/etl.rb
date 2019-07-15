class ETL

  attr_accessor :old

  def self.transform(old)
    old.each_with_object({}) do |(key,value), hash|
      value.each {|letter| hash[letter.downcase] = key }
    end
  end

end