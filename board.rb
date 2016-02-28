class Board
  def initialize(xLength, yLength)
    @xLength = xLength
    @yLength = yLength
  end

  def valid?(x, y)
    x.to_i.between?(0, @xLength - 1) and y.to_i.between?(0, @yLength - 1)
  end
end