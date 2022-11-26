class Position

  attr_accessor :row, :column

  def initialize row, column
    @row = row.to_i
    @column = column.to_i
  end
end
