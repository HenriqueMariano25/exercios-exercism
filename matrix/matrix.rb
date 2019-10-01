class Matrix
  attr_reader :rows
  def initialize(string)
    @rows = string.split("\n")
                  .reduce([]){ | result, row | result << row.split.map(&:to_i) }
  end

  def columns
    transposed = []
    (0...rows[0].size).each do |i|
      transposed << rows.each_with_object([]) { |row, column| column << row[i] }
    end
    transposed
  end
end
