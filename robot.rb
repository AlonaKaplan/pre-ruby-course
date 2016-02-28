class Robot

  @@DIRECTIONS_ARR = [:north, :east, :south, :west]
  @@DIRECTIONS_HASH = Hash[@@DIRECTIONS_ARR.map.with_index.to_a]

  def initialize(board)
    @board = board
  end

  def place(x, y, direction)
    if (@board.valid?(x, y))
      @x = x.to_i
      @y = y.to_i
      @direction = direction.downcase.to_sym
    end
  end

  def isPlaceInitialized
    @x and @y and @direction
  end

  def report
    if (isPlaceInitialized)
      puts [@x, @y, @direction].join(",").upcase
      [@x, @y, @direction]
    end
  end

  def move
    if (isPlaceInitialized)
      send(@direction)
    end
  end

  def left
    if (isPlaceInitialized)
      arr_new_index = (@@DIRECTIONS_HASH[@direction] - 1) % @@DIRECTIONS_ARR.length;
      @direction = @@DIRECTIONS_ARR[arr_new_index]
    end
  end

  def right
    if (isPlaceInitialized)
      arr_new_index = (@@DIRECTIONS_HASH[@direction] + 1) % @@DIRECTIONS_ARR.length;
      @direction = @@DIRECTIONS_ARR[arr_new_index]
    end
  end

  private
  def north
    place(@x, @y +1, @direction)
  end

  def south
    place(@x, @y -1, @direction)
  end

  def east
    place(@x + 1, @y, @direction)
  end

  def west
    place(@x -1, @y, @direction)
  end
end