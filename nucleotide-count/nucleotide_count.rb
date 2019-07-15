require 'byebug'

class Nucleotide

  attr_accessor :str, :hash

  def initialize(str)
    @str = str
    @hash = prepare_count
  end

  def dna
    ['A','C','G','T']
  end

  def self.from_dna(str)  
    if !str.nil? 
      Nucleotide.new(str)
    else
      raise ArgumentError
    end
  end

  def prepare_count
     if str.chars.map { |n| dna.include?(n)}.uniq.size != 2
        dna_hash = dna.each_with_object(Hash.new(0)) {|n, hash| hash[n] = 0}
        str.chars.map {|w| dna.include?(w) ? dna_hash[w] += 1 : 0}
        dna_hash
     else
      raise ArgumentError
     end

  end

  def count(letter)
    hash[letter]
  end

  def histogram
    hash
  end


end
