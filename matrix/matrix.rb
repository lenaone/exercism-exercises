class Matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    @matrix.each_line.map { |a| a.split.map(&:to_i) }
  end

  def columns
    # rows.transpose
    (0...rows.first.count).map do |column_i|
      rows.map{ |row| row[column_i] }
    end
  end


end