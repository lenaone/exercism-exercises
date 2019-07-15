class ResistorColors

  def self.colours
    colours = {
      'black'=> 0,
      'brown'=> 1,
      'red'=> 2,
      'orange'=> 3,
      'yellow'=> 4,
      'green'=> 5,
      'blue'=> 6,
      'violet'=> 7,
      'grey'=> 8,
      'white'=> 9
    }
  end

  def self.value(arr)
    color = colours
    collect_colour_value = arr.map do |num|
      color[num]
    end
    collect_colour_value.join('').to_i
  end
  
end