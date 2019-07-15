class Complement
  
  def self.of_dna(nucleotide) 

    hash = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U',
      'U' => 'A'
    }

    transition_words = nucleotide.scan(/./).map do |word|
      hash[word]
    end

    transition_words.join('')
  end

end
# using scan or split and get single element
# loop through all the elements
# get all the ouput and join it 
